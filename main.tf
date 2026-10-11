resource "confluent_transit_gateway_attachment" "transit_gateway_attachments" {
  for_each = var.transit_gateway_attachments

  display_name = each.value.display_name

  environment {
    id = each.value.environment.id
  }

  network {
    id = each.value.network.id
  }

  dynamic "aws" {
    for_each = each.value.aws != null ? [each.value.aws] : []
    content {
      ram_resource_share_arn = aws.value.ram_resource_share_arn
      routes                 = aws.value.routes
      transit_gateway_id     = aws.value.transit_gateway_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

