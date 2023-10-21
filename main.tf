# Realiza o upload do script no S3
resource "aws_s3_object" "object" {
  bucket = var.bucket
  key    = "example_job/script/example.py"
  source = "app/example.py"
}

# Cria o job
resource "aws_glue_job" "example" {
  name     = "example"
  role_arn = "${var.gluejob_role}"
  glue_version = "4.0"
  worker_type  = "G.1X"
  number_of_workers = 5
  timeout = 10
  description = "Glue Job de exemplo para teste do Terraform"
  default_arguments = {
    "--jobname" = "example"
  }

  command {
    python_version  = "3"
    script_location = "s3://${var.bucket}/example.py"
  }
}