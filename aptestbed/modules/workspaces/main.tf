resource "aws_workspaces_workspace" "ws" {
  directory_id = var.directory_id
  user_name    = var.user_name
  bundle_id    = var.bundle_id   # Use the specified bundle ID (e.g., "wsb-fb2xfp6r8")

  # You can also configure additional settings here like volume sizes, encryption, etc.
}