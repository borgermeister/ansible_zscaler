# Zscaler - Automation with Ansible

This repository contains Ansible playbooks and roles for automating Zscaler configuration and management.

## Requirements

1. You need to configure Zscaler OneAPI with appropriate permissions.
2. You need to have Ansible installed on your system.
3. You need to decide on a secrets management method for storing Zscaler OneAPI credentials.

## Configuration

### Zscaler OneAPI credentials

In order to use the Ansible playbooks and roles in this repository, you will need to generate Zscaler OneAPI credentials. You can obtain these by logging into the [Zscaler Experience Center](https://console.zscaler.com) and navigating to the OneAPI section (***Administration -> API Configuration -> OneAPI***).

At this moment Zscaler OneAPI is only supported on the ZIA collection. When using the ZPA collection you will need to use the Legacy API.

For the Legacy API you will also need your **customer ID** and the name of the **ZPA cloud**.

### Ansible installation

There are several ways you can install Ansible on your system. One way is to use the `pip` package manager, or you can run Ansible from a Docker container.
In this example I have chosen to install Ansible in a virtual environment using [Devbox](https://www.jetify.com/devbox) along with [UV](https://docs.astral.sh/uv/).
DevBox is a tool to create isolated, reproducible development environments, and UV is a lightweight and fast Python packet manager.

I recently replaced [Poetry](https://python-poetry.org/) with [UV](https://docs.astral.sh/uv/).

#### DevBox Installation and basic usage

```shell
# Install DevBox
curl -fsSL https://get.jetify.com/devbox | bash

# Install Nix package manager
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install

# Activate DevBox virtual environment - executes the content of devbox.json
devbox shell

# Update DevBox packages
devbox update

# Add DevBox package
devbox add <package>

# Upgrade DevBox
devbox version update
```

## Secrets Management

Pass will be installed as soon as you run the DevBox virtual environment. [Gopass](https://www.gopass.pw) is a more modern and intuitive way to manage the Password Store, and will also be installed as part of the DevBox installation.
The file `./inventory/host_vars/localhost/zscaler_provider.yaml` contains a few different ways to provide the Zscaler API credentials to Ansible.

## Activating the virtual environment

DevBox creates a virtual environment for each project you work on - based on the content of `devbox.json`. To activate the virtual environment for this project you need to run the following command:

```shell
# Activate the virtual environment
devbox shell
```

This will install Ansible and all the required dependencies in the virtual environment.

## Using Ansible roles

All Ansible roles contains default variables which are only ment as an example. You can override these variables by running the simple bash script `copy_default_vars.sh` which copies the default variables to the `./inventory/host_vars/localhost` directory.
