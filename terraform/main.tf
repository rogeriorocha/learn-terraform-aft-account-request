module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "homologacao-poc@leguedex.com"
    AccountName               = "homologacao-poc"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "homologacao-poc@leguedex.com"
    SSOUserFirstName          = "Homologacao"
    SSOUserLastName           = "POC"
  }


  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
