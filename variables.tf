variable "iploadbalancing_tcp_routes" {
  description = <<EOT
Map of iploadbalancing_tcp_routes, attributes below
Required:
    - service_name
    - action (block):
        - target (optional)
        - type (required)
Optional:
    - display_name
    - frontend_id
    - weight
EOT

  type = map(object({
    service_name = string
    display_name = optional(string)
    frontend_id  = optional(number)
    weight       = optional(number)
    action = object({
      target = optional(string)
      type   = string
    })
  }))
}

