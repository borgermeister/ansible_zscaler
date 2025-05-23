#!/bin/bash

# Function to copy file if it does not exist
copy_if_not_exists() {
    local source=$1
    local destination=$2

    if [ ! -f "$destination" ]; then
        cp "$source" "$destination"
        echo "Copied '$source' to '$destination'."
    else
        echo "File '$destination' already exists. Skipping copy."
    fi
}


# Copy default variables from role 'zia_cloud_firewall_rule' to host variables for localhost
copy_if_not_exists ./roles/zscaler_zia/zia_cloud_firewall_rule/defaults/main.yaml ./inventory/host_vars/localhost/zia_cloud_firewall_rule.yaml

# Copy default variables from role 'zia_ssl_inspection_rules' to host variables for localhost
copy_if_not_exists ./roles/zscaler_zia/zia_ssl_inspection_rules/defaults/main.yaml ./inventory/host_vars/localhost/zia_ssl_inspection_rules.yaml

# Copy default variables from role 'zia_url_filtering_rules' to host variables for localhost
copy_if_not_exists ./roles/zscaler_zia/zia_url_filtering_rules/defaults/main.yaml ./inventory/host_vars/localhost/zia_url_filtering_rules.yaml
