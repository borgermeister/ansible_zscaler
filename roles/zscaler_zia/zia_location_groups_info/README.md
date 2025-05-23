# Zscaler Location Groups Info

## Basic Usage

When configuring rules in ZIA or ZPA there are several parameters you can configure. Some are mandatory and other are optional.

The parameter `location_groups` is optional and accepts a list of integer element IDs. The element ID is not visible in the **Zscaler Experience Center** and needs to be retrieved.

This Ansible role will query all [**Location Groups**](https://console.zscaler.com/internet-saas#administration/locations?LOCATION_GROUPS) and create key-value pairs(variables) using a custom naming convention. All variables are prefixed with `location_group_` + the name of the group (in lowercase with hyphens, underscore and whitespace removed)

### Example

Location Group **Corporate User Traffic Group** will be named `location_group_corporateusertrafficgroup`.
