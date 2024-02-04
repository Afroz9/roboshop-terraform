module "instance" {
  for_each   = var.components
  source     = "git::https://github.com/Afroz9/tf-module-app.git"
  component  = each.key
  env        = var.env
}
