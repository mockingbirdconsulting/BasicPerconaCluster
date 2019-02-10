# Terraform

This code creates the infrastructure for a PerconaDB Galera Cluster and configures the monitoring.

## Usage

Set the environment variables for the inputs below by running the following command:

```bash
export TF_VAR_<var_name_here>=<variable_value>
```

You should then run `terraform init` followed by `terraform apply` and finally `terraform plan`.

You will need to have an API key from Digital Ocean before running this code

*NOTE: The dd_aws_external_id key is stored securely by Mockingbird Consulting and must be in place before running terraform.  Failure to do so will break the DataDog integration*

Mockingbird Consulting suggest that you keep a script with the following content and source it before running terraform:

```bash
#!/bin/bash
export DATADOG_API_KEY=<YOUR DATADOG API KEY>
export DATADOG_APP_KEY=<YOUR DATADOG APP KEY>
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| dd\_aws\_external\_id | The DataDog External ID provided by the Integration page | string | `` | no |

