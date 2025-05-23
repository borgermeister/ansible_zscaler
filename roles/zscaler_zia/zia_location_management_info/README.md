# Zscaler Location Management Info

## Basic Usage

When configuring rules in ZIA or ZPA there are several parameters you can configure. Some are mandatory and other are optional.

The parameter `locations` is optional and accepts a list of integer element IDs. The element ID is not visible in the **Zscaler Experience Center** and needs to be retrieved.

This Ansible role will query all [**Locations**](https://console.zscaler.com/internet-saas#administration/locations) and create key-value pairs(variables) using a custom naming convention. All variables are prefixed with `location_` + the name of the group (in lowercase with hyphens, underscore and whitespace removed)

### Example

Location **Borgermeister Home** will be named `location_borgermeisterhome`.
