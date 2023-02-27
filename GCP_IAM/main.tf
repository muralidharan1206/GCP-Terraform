resource "google_project_iam_member" "role" {
  for_each = var.value
  role     = each.value.role
  project  = each.value.project
  member   = each.value.member
}
