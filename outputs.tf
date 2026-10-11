output "iploadbalancing_tcp_routes_id" {
  description = "Map of id values across all iploadbalancing_tcp_routes, keyed the same as var.iploadbalancing_tcp_routes except keys with no id are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_route.iploadbalancing_tcp_routes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iploadbalancing_tcp_routes_action" {
  description = "Map of action values across all iploadbalancing_tcp_routes, keyed the same as var.iploadbalancing_tcp_routes except keys with no action are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_route.iploadbalancing_tcp_routes : k => one(v.action) if v.action != null && length(v.action) > 0 }
}
output "iploadbalancing_tcp_routes_display_name" {
  description = "Map of display_name values across all iploadbalancing_tcp_routes, keyed the same as var.iploadbalancing_tcp_routes except keys with no display_name are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_route.iploadbalancing_tcp_routes : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "iploadbalancing_tcp_routes_frontend_id" {
  description = "Map of frontend_id values across all iploadbalancing_tcp_routes, keyed the same as var.iploadbalancing_tcp_routes except keys with no frontend_id are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_route.iploadbalancing_tcp_routes : k => v.frontend_id if v.frontend_id != null }
}
output "iploadbalancing_tcp_routes_rules" {
  description = "Map of rules values across all iploadbalancing_tcp_routes, keyed the same as var.iploadbalancing_tcp_routes except keys with no rules are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_route.iploadbalancing_tcp_routes : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "iploadbalancing_tcp_routes_service_name" {
  description = "Map of service_name values across all iploadbalancing_tcp_routes, keyed the same as var.iploadbalancing_tcp_routes except keys with no service_name are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_route.iploadbalancing_tcp_routes : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "iploadbalancing_tcp_routes_status" {
  description = "Map of status values across all iploadbalancing_tcp_routes, keyed the same as var.iploadbalancing_tcp_routes except keys with no status are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_route.iploadbalancing_tcp_routes : k => v.status if v.status != null && length(v.status) > 0 }
}
output "iploadbalancing_tcp_routes_weight" {
  description = "Map of weight values across all iploadbalancing_tcp_routes, keyed the same as var.iploadbalancing_tcp_routes except keys with no weight are omitted"
  value       = { for k, v in ovh_iploadbalancing_tcp_route.iploadbalancing_tcp_routes : k => v.weight if v.weight != null }
}

