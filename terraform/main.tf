module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "homo-poc2@leguedex.com"
    AccountName               = "homo-poc2"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "homo-poc2@leguedex.com"
    SSOUserFirstName          = "Homo2"
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
