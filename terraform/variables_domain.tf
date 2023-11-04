variable "zone_name" {
  description = "The DNS zone name."
  type        = string
}

variable "acm_record_name" {
  description = "The ACM validation CNAME record name."
  type        = string
}

variable "acm_record_value" {
  description = "The ACM validation CNAME record value."
  type        = string
}

variable "gui_record_value" {
  description = "The A record value for the GUI."
  type        = string
}

variable "gui_staging_record_name" {
  description = "The record name for the GUI staging environment."
  type        = string
}

variable "gui_staging_record_value" {
  description = "The record value for the GUI staging environment."
  type        = string
}

variable "www_record_value" {
  description = "The record value for the www subdomain."
  type        = string
}

variable "email_mx_records" {
  description = "The MX records for email service."
  type        = list(string)
}

variable "email_spf_record" {
  description = "The SPF record value for the email service."
  type        = string
}