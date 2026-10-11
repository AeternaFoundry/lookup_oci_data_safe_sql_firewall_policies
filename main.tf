data "oci_data_safe_sql_firewall_policies" "data_safe_sql_firewall_policies_lookup" {
  for_each = var.data_safe_sql_firewall_policies_lookup

  compartment_id                        = each.value.compartment_id
  access_level                          = each.value.access_level
  compartment_id_in_subtree             = each.value.compartment_id_in_subtree
  db_user_name                          = each.value.db_user_name
  display_name                          = each.value.display_name
  security_policy_id                    = each.value.security_policy_id
  sql_firewall_policy_id                = each.value.sql_firewall_policy_id
  state                                 = each.value.state
  time_created_greater_than_or_equal_to = each.value.time_created_greater_than_or_equal_to
  time_created_less_than                = each.value.time_created_less_than
  violation_action                      = each.value.violation_action

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

