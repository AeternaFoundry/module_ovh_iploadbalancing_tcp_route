resource "ovh_iploadbalancing_tcp_route" "iploadbalancing_tcp_routes" {
  for_each = var.iploadbalancing_tcp_routes

  service_name = each.value.service_name
  display_name = each.value.display_name
  frontend_id  = each.value.frontend_id
  weight       = each.value.weight

  action {
    target = each.value.action.target
    type   = each.value.action.type
  }
}

