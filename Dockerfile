# syntax=docker/dockerfile:1
# Declare the BASE IMAGE
FROM docker.io/library/almalinux:9
# Define Build Arguments
ARG CREATED
ARG REVISION
ARG VERSION

# Set environment variables
ENV PIP_CACHE_DIR=/var/cache/buildkit/pip

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

# Cache Mounts
# See: https://docs.docker.com/build/guide/mounts/
# and: https://docs.docker.com/reference/dockerfile/#run
# as well as: https://github.com/moby/buildkit/issues/1673
# We set the option `keepcache=True` to tell DNF to keep all downloaded packages in the cache even
# after a successful installation. This should speed up building the image, since the packages
# do not necessarily need to be re-downloaded.
RUN --mount=type=cache,id=docker-almalinux9-ansible-dnf,target=/var/cache/dnf,sharing=locked,mode=0755 \
    --mount=type=cache,id=docker-almalinux9-ansible-dnf-lists,target=/var/lib/dnf,sharing=locked,mode=0755 \
    dnf install --assumeyes --setopt=install_weak_deps=False --setopt=keepcache=True \
        bash \
        epel-release \
        git \
        hostname \
        initscripts \
        iproute \
        libyaml \
        python3 \
        python3-jinja2 \
        python3-pip \
        python3-pyyaml \
        python3-setuptools \
        sudo \
        wget \
        which && \
# Create the cache directory for pip
    mkdir --parents "${PIP_CACHE_DIR}" && \
# Upgrade pip to latest version
    python3 -m pip install --upgrade pip wheel && \
# Install Ansible via pip
    python3 -m pip install ansible && \
# Disable requiretty
    sed --expression='s/^\(Defaults\s*requiretty\)/#--- \1/' --in-place "/etc/sudoers" && \
# Install Ansible inventory file
    mkdir --parents "/etc/ansible" && \
# hadolint SC3037: In POSIX sh, echo flags are undefined.
    bash -c "echo -e '[local]\nlocalhost ansible_connection=local' > '/etc/ansible/hosts'"

VOLUME ["/sys/fs/cgroup"]
CMD ["/usr/lib/systemd/systemd"]