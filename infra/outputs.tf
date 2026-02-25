# Выходные данные
output "proxy_public_ip" {
  value = yandex_compute_instance.proxy.network_interface[0].nat_ip_address
}

output "bucket_name" {
  value = yandex_storage_bucket.data_bucket.bucket
}

output "bucket_url" {
  description = "Public URL of the S3 bucket"
  value       = "https://storage.yandexcloud.net/${yandex_storage_bucket.data_bucket.bucket}/"
}