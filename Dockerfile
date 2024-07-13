# syntax=docker/dockerfile:1
# Declare the BASE IMAGE
FROM docker.io/library/almalinux:9
# Define Build Arguments
ARG CREATED
ARG REVISION
ARG VERSION

# Set environment variables

# OCI image annotation
# See: https://snyk.io/de/blog/how-and-when-to-use-docker-labels-oci-container-annotations/
# and: https://github.com/opencontainers/image-spec/blob/main/annotations.md
# Deprecated but for backward compatibility
LABEL org.opencontainers.image.authors="Robin Walter <hello@robinwalter.me>" \
    org.opencontainers.image.base.name="docker.io/library/almalinux:9" \
    org.opencontainers.image.created="${CREATED}" \
    org.opencontainers.image.description="AlmaLinux 9 Docker image for Ansible playbook and role testing." \
    org.opencontainers.image.documentation="https://github.com/robinwalterfit/docker-almalinux9-ansible" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.revision="${REVISION}" \
    org.opencontainers.image.source="https://github.com/robinwalterfit/docker-almalinux9-ansible.git" \
    org.opencontainers.image.title="Docker AlmaLinux 9 Ansible" \
    org.opencontainers.image.url="https://github.com/robinwalterfit/docker-almalinux9-ansible" \
    org.opencontainers.image.vendor="Robin Walter" \
    org.opencontainers.image.version="${VERSION}"

RUN dnf install --assumeyes --setopt=install_weak_deps=False dnf-plugins-core && \
    dnf upgrade --assumeyes --setopt=install_weak_deps=False && \
    dnf config-manager --assumeyes --set-enabled crb && \
    dnf install --assumeyes --setopt=install_weak_deps=False \
        bash \
        epel-release \
        git \
        hostname \
        initscripts \
        iproute \
        libyaml \
        python3.12 \
        python3.12-libs \
        python3.12-pip \
        python3.12-pyyaml \
        python3.12-setuptools \
        python3.12-wheel \
        sudo \
        wget \
        which && \
    # Remove dnf artifacts to reduce image size
    dnf clean all && \
    # Upgrade pip to latest version
    pip3.12 install --no-cache-dir --upgrade pip wheel && \
    # Install Ansible via pip
    pip3.12 install --no-cache-dir ansible && \
    # Disable requiretty
    sed --expression='s/^\(Defaults\s*requiretty\)/#--- \1/' --in-place "/etc/sudoers" && \
    # Install Ansible inventory file
    mkdir --parents "/etc/ansible" && \
    # hadolint SC3037: In POSIX sh, echo flags are undefined.
    bash -c "echo -e '[local]\nlocalhost ansible_connection=local' > '/etc/ansible/hosts'"

VOLUME ["/sys/fs/cgroup"]
CMD ["/usr/lib/systemd/systemd"]