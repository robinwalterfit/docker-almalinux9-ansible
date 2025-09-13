<h1 align="center" id="docker-ansible">Docker AlmaLinux 9 Ansible</h1>
<p align="center">
  <i>AlmaLinux 9 Docker image for Ansible playbook and role testing.</i>
  <br/><br/>
  <a href="https://conventionalcommits.org">
    <img alt="Conventional Commits" src="https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg?style=flat-square" />
  </a>
  <img alt="License MIT" src="https://img.shields.io/badge/License-MIT-green.svg?logo=opensourceinitiative&amp;logoColor=FFFFFF&amp;style=flat-square" />
  <a href="./.github/CODE_OF_CONDUCT.md">
    <img alt="Contributor Covenant" src="https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg?style=flat-square" />
  </a>
  <a href="https://almalinux.org/">
    <img alt="AlmaLinux" src="https://img.shields.io/badge/AlmaLinux-000?logo=almalinux&amp;logoColor=white&amp;style=flat-square">
  </a>
  <a href="https://docker.com">
    <img alt="Docker" src="https://img.shields.io/badge/Docker-2496ED?logo=docker&amp;logoColor=white&amp;style=flat-square">
  </a>
  <a href="https://hub.docker.com/r/robinwalterfit/docker-almalinux9-ansible">
    <img alt="Docker pulls" src="https://img.shields.io/docker/pulls/robinwalterfit/docker-almalinux9-ansible?logo=docker&amp;style=flat-square">
  </a>
  <a href="https://github.com/robinwalterfit/docker-almalinux9-ansible/actions">
    <img alt="GitHub Actions" src="https://img.shields.io/badge/GitHub_Actions-2088FF?logo=github-actions&amp;logoColor=white&amp;style=flat-square">
  </a>
  <a href="https://github.com/robinwalterfit/docker-almalinux9-ansible/actions?query=workflow%3ABuild%20&amp;%20Push">
    <img alt="GitHub Actions - Build & Push Status" src="https://img.shields.io/github/actions/workflow/status/robinwalterfit/docker-almalinux9-ansible/build-and-push.yml?branch=main&amp;event=push&amp;style=flat-square&amp;logo=github&amp;logoColor=white">
  </a>
  <a href="https://github.com/evilmartians/lefthook">
    <img alt="lefthook" src="https://img.shields.io/badge/lefthook-enabled-brightgreen?logo=data:image/svg+xml;base64,PHN2ZyB3aWR0aD0nNDAwJyBoZWlnaHQ9JzI3MicgeG1sbnM9J2h0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnJz48cGF0aCBmaWxsPScjRkYxRTFFJyBkPSdNMjU4IDI2Mi42TDE0OSAyMTBsLTcyLjQgMjIuM0w1IDE5Ny44bDc2LjctOTguNC0xMy4xLTI0LjVMMTEwLjggMzZsNjUuNC0yLjdMMjUxLjkgNSAzODYuNyAxNTAgMzIzIDI0Ni42eicvPjxwYXRoIGQ9J004My4yIDE2Ni44YzI4LjYgOC42IDU4LjUuNiA4OS45LTI0LjFsMTQ3IDk1LjItMzAgMTguNWgtNDlsLTc3LjUtMzguMi03MC44IDE4LTgwLjQtMzYuNkw2OS43IDE3MGwxMy41LTMuMnptNTItMTEyLjdjMTAuMy0yLjcgMzEuNyAyMi4zIDMyLjcgMjguNCAzLjggMjEuMiA1LjQgMzUuNS0yMC43IDU2LjRhNjkuOCA2OS44IDAgMCAxLTU2LjUgMTUuN2w1LjItMjMuM0w3NyA5My43YTk2LjYgOTYuNiAwIDAgMSA1OC4xLTM5LjZ6JyBmaWxsPScjQkYwMDAwJy8+PHBhdGggZD0nTTkwLjUgMjQzLjZsLTEuNy41TC4zIDIwNC4zbDItNC41YzE0LjEtMzIuNiAzNS02MS4yIDYyLjMtODUuOGEzNjAuNiAzNjAuNiAwIDAgMSAxMS44LTEwLjJsLTQuNi04LjctNS42LTEwLjUtMS44LTMuNS0xLjItMi4zIDEuMS0yLjNjMTIuMy0yNSAzMS41LTM5IDYyLjgtNDcuNSAxOS4xLTUgMzUuMS00LjcgNDggMS40QTI4Ny42IDI4Ny42IDAgMCAxIDI1MS4zLjdsMS0uMiAxNDQuNSAxNTUtMS42IDNhMzE4NCAzMTg0IDAgMCAxLTM3LjQgNzIuNmMtMTcuMyAzMi42LTQ2IDQ0LjQtODMuMyAzOS0yOC00LTU4LjUtMTctOTUtMzcuOGwtMTEtNi4xYy0xNi45IDIuNS00MyA4LjMtNzguMSAxNy40ek03MS4yIDEyMS41YTIzNy4yIDIzNy4yIDAgMCAwLTU3LjcgNzcuN2w2MS4yIDI3LjZhNTE3LjUgNTE3LjUgMCAwIDEgNjIuNS0xOC4zIDI3MjQ0LjggMjcyNDQuOCAwIDAgMC02My42LTM1LjZsLTQuNi0yLjYgMjMuMy0zNi41LTExLjEtMjFhMzUxLjIgMzUxLjIgMCAwIDAtMTAgOC43em0zNy4yIDQ4LjZoLjFjMzcuOC02LjcgNjcuNC0zNi43IDc4LTU1LjdhMjE0LjIgMjE0LjIgMCAwIDAgNS44LTkuMkwyNDQuMSAxM2EyNzQuOCAyNzQuOCAwIDAgMC03NC44IDMyLjRsLTEwLjgtNWEzNzcuMyAzNzcuMyAwIDAgMSA1LjQtMy40IDY4LjIgNjguMiAwIDAgMC0zNC4zIDEuOEMxMDIgNDYuMSA4NS40IDU4IDc0LjQgNzguN2wuNyAxLjIgNS41IDEwLjUgMTkuNiAzN2E1MC40IDUwLjQgMCAwIDAgMTkgLjJjOS42LTEuNCAxOC40LTUgMjUuNS0xMC43IDE0LjEtMTEuNCAyMS42LTIwIDIyLjItMjcuNi43LTktNS4yLTIxLjEtMjEuNy00NC4xIDIzLjMgMTUuNiAzOS4yIDQwLjYgMjYuNCA1OC42di4xYTU3IDU3IDAgMCAxLTQuMyA1LjZjLTQuMiA0LjgtOS4zIDkuNS0xNi4zIDE1LjJhNjMuNCA2My40IDAgMCAxLTMwLjMgMTIuOCA2NiA2NiAwIDAgMS0xOS4xLjNsLTE4LjUgMjlhMjgwNzQuNyAyODA3NC43IDAgMCAxIDQ5LjUgMjcuNnYtLjJjNTEtMi43IDg0LTMzLjYgMTE1LjktODQuMy0yNC40IDUxLjgtNTQuNiA4NS0xMDEuMiA5Mi44IDkuOCA1LjQgMTguNiAxMC40IDI2LjYgMTUgNTAtMy4zIDgwLjItMzAuNyAxMTEuOC04MC45LTI0LjEgNTEuMi01MS45IDgxLjQtOTcgODkuMmE1NTAuNyA1NTAuNyAwIDAgMCAxNC43IDggNzUgNzUgMCAwIDEtLjUtLjUgMjIyLjMgMjIyLjMgMCAwIDAgNS41IDMgNDEwIDQxMCAwIDAgMCA4LjMgNGM0OS44LTMuMiA3Ny42LTI3LjEgMTA5LjItNzcuMy0yMy4yIDQ5LjMtNDggNzYuNS04OS43IDg1IDMwLjUgOSA1NS4yIDMuNSA4MC0xMiA4LjUtNS41IDI4LjktMzQuNSA2MS04Ny4yTDI1My42IDE2LjQgMjAxIDExMC4yYTE3Mi45IDE3Mi45IDAgMCAxLTMwLjEgMzguNCA5NCA5NCAwIDAgMS02Mi40IDIxLjV6JyBmaWxsPScjM0MwMDAwJy8+PC9zdmc+&amp;style=flat-square" />
  </a>
  <a href="https://taskfile.dev/">
    <img alt="Taskfile" src="https://img.shields.io/badge/Taskfile-29BEB0?logo=task&amp;logoColor=white&amp;style=flat-square">
  </a>
</p>

<details>
  <summary><b>Table of Contents</b></summary>
  <p>

- [Getting Started](#getting-started)
  - [Tags](#tags)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Usage](#usage)
- [Development](#development)
  - [Build the Project](#build-the-project)
  - [Deployment](#deployment)
- [Notes](#notes)
- [Contributing](#contributing)
- [Links](#links)
- [License](#license)

  </p>

</details>

## Getting Started

This project builds a minimal AlmaLinux OS 9 image for basic validation of
Ansible playbooks.

### Tags

- `latest`: Latest stable version of Ansible.

### Prerequisites

To make use of this image you (of course) need Docker installed on your
machine. You can find instructions on [how to install Docker for your platform](https://docs.docker.com/engine/install/)
according the instructions from this link.

Docker is also necessary if you want to extend the image. Otherwise you
won't be able to build the new image.

### Installation

The image will be built by a GitHub Action and pushed automatically to Docker
Hub. In order to install the image to create a new image, all you have to do is:

```bash
docker pull docker.io/robinwalterfit/docker-almalinux9-ansible:latest
```

### Usage

After you have pulled the image you can create a new container and run Ansible
inside.

```bash
docker run \
    --cgroupns=host \
    --detach \
    --name docker-ansible \
    --privileged \
    --volume '/sys/fs/cgroup:/sys/fs/cgroup:rw' \
    --volume "$PWD:/etc/ansible/roles/role_under_test:ro" \
    docker.io/robinwalterfit/docker-almalinux9-ansible:latest
```

This will create a new container from the image and mount your current working
directory into the container. The container will be executed in the background,
so you can reuse your current terminal session. If you do not want to run the
container in the background, just remove the `--detach` flag.

If you do not need the container after you are done, you can also add the `--rm`
flag. This will remove the container after it has finished its execution.

Now you can attach to your running container and run Ansible inside it to test
your role:

```bash
docker exec --tty docker-ansible env TERM=xterm ansible --version

# or:

docker exec --tty docker-ansible env TERM=xterm ansible-playbook /path/to/ansible/playbook.yml --syntax-check
```

**[⬆️ Back to Top](#docker-ansible)**

## Development

In order to extend the functionallity of the image you must follow the
[prerequisites](#prerequisites) to install Docker.

It is recommended to use [Visual Studio Code](https://code.visualstudio.com/)
as editor. The repository recommends different VSCode extensions, however, none
of them are required. It is up to you what extensions you use.

There is only one Dockerfile that is used.

### Build the Project

This project uses [Taskfile](https://taskfile.dev/). Thanks to `task` building
the image locally is as convenient as `task build`.

There are more tasks defined. The `build` task builds the image for your current
architecture. The `cross-build` task will build the image for `linux/amd64` as
well as `linux/arm64`.

The `mega-linter` task will run [MegaLinter](https://megalinter.io) with the
help of `npx` and Docker.

### Deployment

A GitHub Action will automatically build and push the Docker image to Docker
Hub. No manual steps necessary.

**[⬆️ Back to Top](#docker-ansible)**

## Notes

The image is heavily inspired by [`docker-rockylinux9-ansible`](https://github.com/geerlingguy/docker-rockylinux9-ansible)
created by @geerlingguy.

The main (and only) purpose of this image is to test Ansible collections,
playbooks and roles with Docker on multiple OS'. The image can be used to run
theses tests in CI and locally.

Just as Jeff points out, please note:

> [!IMPORTANT]
> The image is for testing in an isolated environment - not for production - and
> the settings and configuration used may not be suitable for a secure and
> performant production environment. Use on production servers / in the wild at
> your own risk!

**[⬆️ Back to Top](#docker-ansible)**

## Contributing

You want to contribute to this project? Great! Please make sure to read
[CONTRIBUTING.md](./CONTRIBUTING.md) first.

**[⬆️ Back to Top](#docker-ansible)**

## Links

- Project Repository: [https://github.com/robinwalterfit/docker-almalinux9-ansible](https://github.com/robinwalterfit/docker-almalinux9-ansible)
- Issues / Feature Requests: [https://github.com/robinwalterfit/docker-almalinux9-ansible/issues](https://github.com/robinwalterfit/docker-almalinux9-ansible/issues)
- Additional links:
  - AlmaLinux OS: [https://almalinux.org/](https://almalinux.org/)
  - Ansible: [https://docs.ansible.com/](https://docs.ansible.com/)
  - Codeowners Docs: [https://github.blog/2017-07-06-introducing-code-owners/](https://github.blog/2017-07-06-introducing-code-owners/)
  - Collection of `.gitattributes` templates: [https://github.com/gitattributes/gitattributes](https://github.com/gitattributes/gitattributes)
  - Commitizen: [https://commitizen-tools.github.io/commitizen/](https://commitizen-tools.github.io/commitizen/)
  - Continue: [https://www.continue.dev/](https://www.continue.dev/)
  - Contributor Covenant Code of Conduct: [https://www.contributor-covenant.org](https://www.contributor-covenant.org)
  - Conventional Commits: [https://www.conventionalcommits.org/en/v1.0.0/](https://www.conventionalcommits.org/en/v1.0.0/)
  - Docker: [https://www.docker.com/](https://www.docker.com/)
  - `docker-rockylinux9-ansible`: [https://github.com/geerlingguy/docker-rockylinux9-ansible](https://github.com/geerlingguy/docker-rockylinux9-ansible)
  - EditorConfig: [https://editorconfig.org/](https://editorconfig.org/)
  - `.gitignore` Generator: [https://gitignore.io](https://gitignore.io)
  - hadolint: [https://hadolint.github.io/hadolint/](https://hadolint.github.io/hadolint/)
  - Lefthook: [https://github.com/evilmartians/lefthook](https://github.com/evilmartians/lefthook)
  - README-Template.md: [https://gist.github.com/PurpleBooth/109311bb0361f32d87a2](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2)
  - Taskfile: [https://taskfile.dev/](https://taskfile.dev/)
  - Visual Studio Code: [https://code.visualstudio.com/](https://code.visualstudio.com/)

**[⬆️ Back to Top](#docker-ansible)**

## License

Code: &copy; 2024 - Present - Robin Walter &lt;<hello@robinwalter.me>&gt;.

MIT where applicable.

**[⬆️ Back to Top](#docker-ansible)**
