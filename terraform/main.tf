locals {
  # Lê todos os arquivos .yaml da pasta /terraform/account
  account_files = fileset("${path.module}/account", "*.yaml")

  # Converte cada YAML em objeto
  account_configs = {
    for file in local.account_files :
    trimsuffix(basename(file), ".yaml") => yamldecode(file("${path.module}/account/${file}"))
  }
}

# Cria dinamicamente um módulo para cada arquivo
module "aft_accounts" {
  for_each = local.account_configs
  source   = "./modules/aft-account-request"

  control_tower_parameters     = each.value.control_tower_parameters
  account_tags                 = each.value.account_tags
  change_management_parameters = each.value.change_management_parameters
  custom_fields                = each.value.custom_fields
  account_customizations_name  = each.value.account_customizations_name
}

