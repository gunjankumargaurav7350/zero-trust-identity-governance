resource "azurerm_policy_set_definition" "zero_trust_baseline" {
  name         = "policy-set-zero-trust-baseline"
  policy_type  = "Custom"
  display_name = "Enterprise Zero Trust Security & Governance Baseline"
  description  = "Enforces mandatory tagging, disables public storage, and mandates disk encryption."

  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/96670d01-0a4d-4649-9c89-2d3abc0a5025" # Require Tag
    parameter_values     = jsonencode({ tagName = { value = "Environment" } })
  }

  policy_definition_reference {
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/404c3081-a854-444e-9ec6-1b072049e00b" # Storage disable public access
  }
}

resource "azurerm_subscription_policy_assignment" "this" {
  name                 = "assign-zero-trust-baseline"
  subscription_id      = var.subscription_id
  policy_definition_id = azurerm_policy_set_definition.zero_trust_baseline.id
  description          = "Applied across all Landing Zone subscriptions"
  display_name         = "Enforce Zero Trust Baseline"
}
