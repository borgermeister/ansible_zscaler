# Zscaler Cloud Firewall Network Services Groups Info

## Basic Usage

When configuring a firewall rule using the module **zia_cloud_firewall_rule** there are several parameters you can configure. Some are mandatory and other are optional.

The parameter `nw_service_groups` is optional and accepts a list of integer element IDs. The element ID is not visible in the **Zscaler Experience Center** and needs to be retrieved.

This Ansible role will query all [**Network Service Groups**](https://console.zscaler.com/internet-saas#administration/network-services) and create key-value pairs(variables) using a custom naming convention. All variables are prefixed with `nw_service_group_` + the name of the group (in lowercase with hyphens, underscore and whitespace removed)

### Example

Network Service Group **Approved Services** will be named `nw_service_group_approvedservices`.
