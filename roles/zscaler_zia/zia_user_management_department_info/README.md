# Zscaler User Management Department Info

## Basic Usage

When configuring rules in ZIA or ZPA there are several parameters you can configure. Some are mandatory and other are optional.

The parameter `departments` is optional and accepts a list of integer element IDs. The element ID is not visible in the **Zscaler Experience Center** and needs to be retrieved.

This Ansible role will query all [**Departments**](https://console.zscaler.com/zidentity/department) and create key-value pairs(variables) using a custom naming convention. All variables are prefixed with `department_` + the name of the group (in lowercase with hyphens, underscore and whitespace removed)

### Example

Location **Borgermeister IT** will be named `department_borgermeisterit`.
