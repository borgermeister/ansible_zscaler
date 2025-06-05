# Zscaler Browser Isolation Profile Info

## Basic Usage

When configuring a URL filtering policy using the module **zia_url_filtering_rules** there are several parameters you can configure. Some are mandatory and other are optional.

The parameter `cbi_profile` with its suboptions is required when action is set to 'ISOLATE', and accepts a list of string elements. The element string is not visible in the **Zscaler Experience Center** and needs to be retrieved.

This Ansible role will query all [**Browser Profiles**](https://console.zscaler.com/internet-saas#administration/browser-isolation) and put all key-value pairs(variables) file located under the role's `files` directory.

### Example

Name: Default Isolation Profile
ID: 101fb624-8675-4ecd-bee9-660f61f7ab8d
URL: https://redirect.isolation.zscaler.com/tenant/12176b75e351/profile/101fb624-8675-4ecd-bee9-660f61f7ab8d
