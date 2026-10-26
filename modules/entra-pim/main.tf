resource "azurerm_pim_eligible_role_assignment" "this" {
  for_each           = var.eligible_roles
  scope              = each.value.scope
  role_definition_id = each.value.role_definition_id
  principal_id       = each.value.principal_id

  schedule {
    start_date_time = try(each.value.start_date_time, null)
    expiration {
      duration_hours = try(each.value.duration_hours, 8)
    }
  }

  justification = "Privileged elevation for infrastructure maintenance window - change ticket required"
}
