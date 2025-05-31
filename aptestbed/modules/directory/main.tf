resource "aws_directory_service_directory" "simple_ad" {
  name     = var.directory_name
  password = var.directory_password
  size     = "Small"
  type     = "SimpleAD"  # Or use "MicrosoftAD" if needed

  vpc_settings {
    vpc_id     = var.vpc_id
    subnet_ids = var.subnet_ids
  }

  tags = {
    Name = "WorkSpacesSimpleAD"
  }
}

resource "aws_workspaces_directory" "workspace_directory" {
  directory_id   = aws_directory_service_directory.simple_ad.id  # Referencing the directory created above
  subnet_ids     = var.subnet_ids  # Only subnet_ids, no vpc_id here

  tags = {
    Name = "WorkSpacesDirectory"
  }
}
