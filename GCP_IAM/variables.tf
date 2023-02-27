variable "value" {
  type = map(object(
    {
      project = string
      role    = string
      member  = string
    }
  ))
  default = {
    "user1role1" = {
      project = "fit-boulevard-377408"
      role    = "roles/compute.admin"
      member  = "user:dharan010698@gmail.com"
    }
    "user1role2" = {
      project = "fit-boulevard-377408"
      role    = "roles/storage.admin"
      member  = "user:dharan010698@gmail.com"
    }
    "user2role1" = {
      project = "fit-boulevard-377408"
      role    = "roles/appengine.appAdmin"
      member  = "user:azure010698@gmail.com"
    }
  }
}

