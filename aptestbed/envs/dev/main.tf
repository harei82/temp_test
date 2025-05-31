module "directory" {
  source             = "../../modules/directory"
  directory_name     = "corp.testap.com"
  directory_password = var.directory_password
  vpc_id             = var.vpc_id
  subnet_ids         = var.subnet_ids
}

module "workspaces" {
  source       = "../../modules/workspaces"
  directory_id = module.directory.directory_id  # Pass the directory ID from the directory module
  user_name    = "hari"
  bundle_id    = "wsb-fb2xfp6r8"  # Correct bundle ID for WorkSpaces
}

output "directory_id" {
  value = module.directory.directory_id  # Output the directory ID for confirmation
}
