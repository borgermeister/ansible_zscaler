# Zscaler Cloud Firewall IP Source Group Info

## Basic Usage

When configuring a firewall rule using the module **zia_cloud_firewall_rule** there are several parameters you can configure. Some are mandatory and other are optional.

The parameter `src_ip_groups` is optional and accepts a list of integer element IDs. The element ID is not visible in the **Zscaler Experience Center** and needs to be retrieved.

This Ansible role will query all [**Source IP Groups**](https://console.zscaler.com/internet-saas#administration/ip-domain-groups) and create key-value pairs(variables) using a custom naming convention. All variables are prefixed with `src_ip_group_` + the name of the group (in lowercase with hyphens, underscore and whitespace removed)

### Example

Source IP Group **Web Servers** will be named `src_ip_group_webservers`.
