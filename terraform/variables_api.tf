variable "heroku_web_dyno_size" {
  description = "The size of the web dynos on Heroku."
  type        = string
}

variable "heroku_worker_dyno_size" {
  description = "The size of the worker dynos on Heroku."
  type        = string
}

variable "heroku_postgresql_plan" {
  description = "The plan type for Heroku Postgres."
  type        = string
}

variable "heroku_cloudamqp_plan" {
  description = "The plan type for Heroku CloudAMQP."
  type        = string
}

variable "heroku_papertrail_plan" {
  description = "The plan type for Heroku Papertrail."
  type        = string
}

variable "heroku_web_dyno_quantity" {
  description = "The quantity of web dynos on Heroku."
  type        = number
}

variable "heroku_worker_dyno_quantity" {
  description = "The quantity of worker dynos on Heroku."
  type        = number
}

variable "django_default_from_email" {
  description = "Default from email address for Django."
  type        = string
}

variable "django_cors_origin_whitelist" {
  description = "CORS origin whitelist for Django."
  type        = list(string)
}

variable "django_cors_origin_regex_whitelist" {
  description = "CORS origin regex whitelist for Django."
  type        = list(string)
}

variable "django_sentry_dsn" {
  description = "Sentry DSN for Django."
  type        = string
}

variable "django_sentry_environment" {
  description = "Sentry environment for Django."
  type        = string
}

variable "checksum_worker_size" {
  description = "The size for the checksum worker dynos on Heroku."
  type        = string
}

variable "checksum_worker_quantity" {
  description = "The quantity of checksum worker dynos on Heroku."
  type        = number
}

variable "analytics_worker_size" {
  description = "The size for the analytics worker dynos on Heroku."
  type        = string
}

variable "analytics_worker_quantity" {
  description = "The quantity of analytics worker dynos on Heroku."
  type        = number
}

variable "doi_api_password" {
  description = "The API password for DOI."
  type        = string
  sensitive   = true
}

variable "doi_api_user" {
  description = "The API user for DOI."
  type        = string
}

variable "doi_api_url" {
  description = "The API URL for DOI."
  type        = string
}

variable "doi_prefix" {
  description = "The DOI prefix."
  type        = string
}

variable "doi_publish" {
  description = "Flag to publish DOI."
  type        = bool
}

variable "web_app_url" {
  description = "The URL for the web application."
  type        = string
}

variable "api_url" {
  description = "The URL for the API."
  type        = string
}

variable "jupyterhub_url" {
  description = "The URL for JupyterHub."
  type        = string
}

variable "additional_django_vars" {
  description = "Additional Django variables."
  type        = map(any)
}

variable "test_doi_api_password" {
  type        = string
  description = "The password for the Datacite Test API, used to mint new DOIs on staging during publish."
}