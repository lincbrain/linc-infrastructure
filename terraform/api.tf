data "heroku_team" "dandi" {
  name = var.heroku_team_name
}

module "api" {
  source  = var.module_source
  version = var.module_version

  project_slug     = var.project_slug
  heroku_team_name = data.heroku_team.dandi.name
  route53_zone_id  = aws_route53_zone.dandi.zone_id
  subdomain_name   = var.subdomain_name

  heroku_web_dyno_size    = var.heroku_web_dyno_size
  heroku_worker_dyno_size = var.heroku_worker_dyno_size
  heroku_postgresql_plan  = var.heroku_postgresql_plan
  heroku_cloudamqp_plan   = var.heroku_cloudamqp_plan
  heroku_papertrail_plan  = var.heroku_papertrail_plan

  heroku_web_dyno_quantity    = var.heroku_web_dyno_quantity
  heroku_worker_dyno_quantity = var.heroku_worker_dyno_quantity

  django_default_from_email          = var.django_default_from_email
  django_cors_origin_whitelist       = var.django_cors_origin_whitelist
  django_cors_origin_regex_whitelist = var.django_cors_origin_regex_whitelist

  additional_django_vars = var.additional_django_vars
  additional_sensitive_django_vars = {
    DJANGO_DANDI_DOI_API_PASSWORD = var.doi_api_password
  }
}

resource "heroku_formation" "api_checksum_worker" {
  app_id   = module.api.heroku_app_id
  type     = var.checksum_worker_type
  size     = var.checksum_worker_size
  quantity = var.checksum_worker_quantity
}

resource "heroku_formation" "api_analytics_worker" {
  app_id   = module.api.heroku_app_id
  type     = var.analytics_worker_type
  size     = var.analytics_worker_size
  quantity = var.analytics_worker_quantity
}

data "aws_iam_user" "api" {
  user_name = module.api.heroku_iam_user_id
}
