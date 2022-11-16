resource "aws_iam_role" "Panthera" {
  tags = merge(var.tags, {})
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Sid       = ""
        Principal = { "Service" : "ec2.amazonaws.com" }
        Action    = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_ssm_activation" "ssm_activation" {
  tags     = merge(var.tags, {})
  iam_role = aws_iam_role.Panthera.arn
}

resource "aws_ssm_document" "ssm_document" {
  tags          = merge(var.tags, {})
  name          = "Panthera_Cluster_session_manager"
  document_type = "Command"
  content       = <<DOC
  {
    "schemaVersion": "1.2",
    "description": "Check ip configuration of a Linux instance.",
    "parameters": {

    },
    "runtimeConfig": {
      "aws:runShellScript": {
        "properties": [
          {
            "id": "0.aws:runShellScript",
            "runCommand": ["ifconfig"]
          }
        ]
      }
    }
  }
  DOC
}

