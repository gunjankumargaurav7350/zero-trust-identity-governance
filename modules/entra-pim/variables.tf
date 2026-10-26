variable "eligible_roles" {
  type = map(object({
    scope              = string
    role_definition_id = string
    principal_id       = string
    duration_hours     = optional(number, 8)
    start_date_time    = optional(string)
  }))
  default = {}
}
