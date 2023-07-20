# iac-mvp
MVP pipeline for managing IAC

## Assumptions / Key points
- Terraform is used for IAC
- Azure is used for cloud
- Only SPNs can access resource groups
- Uses OIDC between repo and resource group
- Flows are reusable

### POC flow
Files: dev-poc.yml, terraform-poc.yml
- Does not rely on environement
- Is not dynamic
- Uses specific release

### MVP flow
Files: dev.yml , terraform-plan.yml , terraform-apply.yml
- Is dynamic
- Relies on environment input
- Plan and Apply workflow is separate
- Has a manual approval step (DIY) before apply

### Release flow
Files: create-release.yml
- Automatically runs on merged and closed PR on yml files
- Uses PR number for tag
- Should have automated extensive notes
