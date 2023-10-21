variable "bucket" {
    type = string
    default = "aws-glue-assets-182205399724-us-east-1"
}

variable "gluejob_role" {
    type = string
    default = "arn:aws:iam::182205399724:role/AWSGlueServiceRoleDefault"
}