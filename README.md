# Zscaler - Automation with Ansible

This repository contains the Ansible playbooks and roles for automating Zscaler configuration and management.

## Requirements

### Zscaler API credentials

In order to use the Ansible playbooks and roles in this repository, you will need to have Zscaler API credentials. You can obtain these by logging into the Zscaler Private Access Admin Portal and navigating to the Public API section (***Configuration & Control -> Public API***).

For some reason I haven't been able to get the OneAPI credentials to work, so you will need to use the API credentials created in the old ZPA Admin Portal instead.

You will also need your **customer ID** and the name of the **ZPA cloud**.

### Ansible installation

There are several ways you can install Ansible on your system. One way is to use the `pip` package manager, or you can run Ansible from a Docker container.
In this example I have chosen to install Ansible using [Devbox](https://www.jetify.com/devbox) along with [Poetry](https://python-poetry.org/).

## Secrets Management
