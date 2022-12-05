resource "aws_s3_object" "s3_object_procesados" {
  for_each = fileset("./Studio-develop/Librerias/","**")
  bucket = "tarrotomado"
  key = "Studio-develop/Librerias/${each.value}"
  source = "./Studio-develop/Librerias/${each.value}"
  etag = filemd5("./Studio-develop/Librerias/${each.value}")
}