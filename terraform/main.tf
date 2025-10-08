module "sandbox" {
  source = "./modules/aft-account-request"


  control_tower_parameters = {
    AccountEmail              = "homo-poc222@leguedex.com"
    AccountName               = "homo-poc222"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "homo-poc222@leguedex.com"
    SSOUserFirstName          = "Homo-poc222"
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

  account_customizations_name = "Sandbox"

