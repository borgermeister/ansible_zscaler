# Zscaler User Management Groups Info

## Basic Usage

When configuring rules in ZIA or ZPA there are several parameters you can configure. Some are mandatory and other are optional.

The parameter `groups` is optional and accepts a list of integer element IDs. The element ID is not visible in the **Zscaler Experience Center** and needs to be retrieved.

This Ansible role will query all [**User Groups**](https://console.zscaler.com/zidentity/users-group) and create key-value pairs(variables) using a custom naming convention. All variables are prefixed with `group_` + the name of the group (in lowercase with hyphens, underscore and whitespace removed)

### Example

Location **Borgermeister Contractors** will be named `group_borgermeistercontractors`.
