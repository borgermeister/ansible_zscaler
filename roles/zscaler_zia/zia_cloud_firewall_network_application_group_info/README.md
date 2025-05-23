# Zscaler Cloud Firewall Network Application Group Info

## Basic Usage

When configuring a firewall rule using the module **zia_cloud_firewall_rule** there are several parameters you can configure. Some are mandatory and other are optional.

The parameter `nw_application_groups` is optional and accepts a list of integer element IDs. The element ID is not visible in the **Zscaler Experience Center** and needs to be retrieved.

This Ansible role will query all [**Network Application Groups**](https://console.zscaler.com/internet-saas#administration/network-applications?APPLICATION_GROUPS) and create key-value pairs(variables) using a custom naming convention. All variables are prefixed with `nw_application_group_` + the name of the group (in lowercase with hyphens, underscore and whitespace removed)

### Example

Network Application Group **Microsoft Office365** will be named `nw_application_group_microsoftoffice365`.
