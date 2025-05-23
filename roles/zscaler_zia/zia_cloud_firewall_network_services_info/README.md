# Zscaler Cloud Firewall Network Services Info

## Basic Usage

When configuring a firewall rule using the module **zia_cloud_firewall_rule** there are several parameters you can configure. Some are mandatory and other are optional.

The parameter `nw_services` is optional and accepts a list of integer element IDs. The element ID is not visible in the **Zscaler Experience Center** and needs to be retrieved.

This Ansible role will query all [**Network Services**](https://console.zscaler.com/internet-saas#administration/network-services) and create key-value pairs(variables) using a custom naming convention. All variables are prefixed with `nw_service_` + the name of the group (in lowercase with hyphens, underscore and whitespace removed)

### Example

Network Service Group **SMTP** will be named `nw_service_smtp`.
