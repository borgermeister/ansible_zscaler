# Zscaler Cloud Firewall Network Application Info

## Basic Usage

When configuring a firewall rule using the module **zia_cloud_firewall_rule** there are several parameters you can configure. Some are mandatory and other are optional.

The parameter `nw_applications` is optional and accepts a list of integer element IDs. The element ID is not visible in the **Zscaler Experience Center** and needs to be retrieved.

This Ansible role will query all [**Network Applications**](https://console.zscaler.com/internet-saas#administration/network-applications?APPLICATIONS) and create key-value pairs(variables) using a custom naming convention. All variables are prefixed with `nw_application_` + the name of the group (in lowercase with hyphens, underscore and whitespace removed)

### Example

Network Application **IOS Appstore** will be named `nw_application_iosappstore`.
