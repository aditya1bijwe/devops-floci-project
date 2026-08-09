module "static_site" {
  source      = "../../modules/s3-site"
  bucket_name = "devops-floci-static-site"
}

output "site_url" {
  value = "http://${module.static_site.website_endpoint}"
}