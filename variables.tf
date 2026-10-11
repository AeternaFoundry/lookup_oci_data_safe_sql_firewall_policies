variable "data_safe_sql_firewall_policies_lookup" {
  description = <<EOT
Map of data_safe_sql_firewall_policies_lookup, attributes below
Required:
    - compartment_id
Optional:
    - access_level
    - compartment_id_in_subtree
    - db_user_name
    - display_name
    - security_policy_id
    - sql_firewall_policy_id
    - state
    - time_created_greater_than_or_equal_to
    - time_created_less_than
    - violation_action
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id                        = string
    access_level                          = optional(string)
    compartment_id_in_subtree             = optional(bool)
    db_user_name                          = optional(string)
    display_name                          = optional(string)
    security_policy_id                    = optional(string)
    sql_firewall_policy_id                = optional(string)
    state                                 = optional(string)
    time_created_greater_than_or_equal_to = optional(string)
    time_created_less_than                = optional(string)
    violation_action                      = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

