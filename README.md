# Zscaler - Automation with Ansible

This repository contains the Ansible playbooks and roles for automating Zscaler configuration and management.

## Requirements

1. You need to configure Zscaler OneAPI with apropriate permissions.
2. You need to have Ansible installed on your system.
3. You need to decide on a secrets management method for storing Zscaler OneAPI credentials.

## Configuration

### Zscaler API credentials

In order to use the Ansible playbooks and roles in this repository, you will need to have Zscaler API credentials. You can obtain these by logging into the Zscaler Private Access Admin Portal and navigating to the Public API section (***Configuration & Control -> Public API***).

At this moment Zscaler OneAPI is only supported on the ZIA collection. When using the ZPA collection you will need to use the Legacy API.

For the Legacy API you will also need your **customer ID** and the name of the **ZPA cloud**.

### Ansible installation

There are several ways you can install Ansible on your system. One way is to use the `pip` package manager, or you can run Ansible from a Docker container.
In this example I have chosen to install Ansible using [Devbox](https://www.jetify.com/devbox) along with [Poetry](https://python-poetry.org/).

#### DevBox Installation

```shell
# Install DevBox
curl -fsSL https://get.jetify.com/devbox | bash

# Install Nix package manager
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

## Secrets Management

Pass will be installed as soon as you run the DevBox virtual environment. [Gopass](https://www.gopass.pw) is a more modern and intuitive way to manage the Password Store, and will also be installed as part of the DevBox installation.
The file `./inventory/host_vars/localhost/zscaler_provider.yaml` contains a few different ways to provide the Zscaler API credentials to Ansible.
