module "components" {
    source = "../terraform-roboshop-compnent"
    component = var.component
    rule_priority = var.rule_priority
}