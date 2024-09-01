module "authorizer_lambda" {
  source = "./modules/lambda"
  name   = "authorizer"
  prefix = local.prefix
}
