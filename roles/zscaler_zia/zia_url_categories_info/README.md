# Zscaler URL Categories Info

## Basic Usage

When configuring a URL filtering policy using the module **zia_url_filtering_rules** there are several parameters you can configure. Some are mandatory and other are optional.

The parameter `url_categories` is optional and accepts a list of string elements. The element string is not visible in the **Zscaler Experience Center** and needs to be retrieved.

This Ansible role will query all [**URL Categories**](https://console.zscaler.com/internet-saas#administration/url-categories) and put all key-value pairs(variables) file located under the role's `files` directory.

### Example

URL category **Other Entertainment/Recreation** has the ID of `OTHER_ENTERTAINMENT_AND_RECREATION`.
