# module "components" {
#     source = "../../terraform-roboshop-compnent"
#     component = var.component
#     rule_priority = var.rule_priority
# }

module "components" {
    for_each = var.components
    source = "git::https://github.com/lavanyak-hub/terraform-roboshop-component.git?ref=main"
    component = each.key 
    rule_priority = each.value.rule_priority
}