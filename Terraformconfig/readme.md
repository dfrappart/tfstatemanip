# Terraform config folder

- This folder contains the terraform configuration files

## List of terraform config

- 00_subsetup: a configuration that I have all the time, for monitoring purpose mainly
- 01_Import: a config used to demonstrate the <a href="https://www.terraform.io/docs/cli/import/index.html" target="_blank"> **`terraform import`** </a> command
- 02_Move: a config used to demonstrate the <a href="https://www.terraform.io/docs/cli/commands/state/mv.html" target="_blank"> **`terraform state mv`** </a> command

## Terraform config usage

- To use the configuration on your local computer, you'll need an Azure subscription, and an application registration with contributor role. If role assignment are written in the configuration, then you'll need to be owner, because only this role can grant role to other.
- Once your credentials are available:
  - Copy paste the **terraform.tfvars.example**
  - fill in the propers values
  - Define your backend configuration, on Azure if you copy paste the **terraformbackendconfig.tf.example**
  - run the `terraform init` `terraform plan` and `terraform apply`and play! 