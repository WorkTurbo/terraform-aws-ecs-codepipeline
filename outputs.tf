output "badge_url" {
  description = "The URL of the build badge when badge_enabled is enabled"
  value       = values(module.codebuild)[*].badge_url
}

output "webhook_id" {
  description = "The CodePipeline webhook's ID"
  value       = join("", aws_codepipeline_webhook.webhook.*.id)
}

output "webhook_url" {
  description = "The CodePipeline webhook's URL. POST events to this endpoint to trigger the target"
  value       = local.webhook_url
  sensitive   = true
}

output "codebuild_project_name" {
  description = "CodeBuild project name"
  value       = values(module.codebuild)[*].project_name
}

output "codebuild_project_id" {
  description = "CodeBuild project ID"
  value       = values(module.codebuild)[*].project_id
}

output "codebuild_role_id" {
  description = "CodeBuild IAM Role ID"
  value       = values(module.codebuild)[*].role_id
}

output "codebuild_role_arn" {
  description = "CodeBuild IAM Role ARN"
  value       = values(module.codebuild)[*].role_arn
}

output "codebuild_cache_bucket_name" {
  description = "CodeBuild cache S3 bucket name"
  value       = values(module.codebuild)[*].cache_bucket_name
}

output "codebuild_cache_bucket_arn" {
  description = "CodeBuild cache S3 bucket ARN"
  value       = values(module.codebuild)[*].cache_bucket_arn
}

output "codebuild_badge_url" {
  description = "The URL of the build badge when badge_enabled is enabled"
  value       = values(module.codebuild)[*].badge_url
}

output "codepipeline_id" {
  description = "CodePipeline ID"
  value       = join("", aws_codepipeline.default.*.id)
}

output "codepipeline_arn" {
  description = "CodePipeline ARN"
  value       = join("", aws_codepipeline.default.*.arn)
}
