# Serverless Web Apps using Amazon DynamoDB

> Serverless architectures allow you to build and run applications and services without needing to provision, manage, and scale infrastructure.

Terraform scripts to build the AWS environment where to deploy interactive serverless web applications which uses Amazon API Gateway calls to send requests to AWS Lambda backends that query Amazon DynamoDB data.

```
Tested using:

Terraform v0.11.10
+ provider.aws v1.42.0
```

### Infrastructure objectives

* Create Amazon DynamoDB
    > Non-sql database to store  the application data
* Create the necessary IAM roles and polices
    > To access the application data
* Create AWS Lambda
    > It will interact with DynamoDB and retrieve in several different way
* Create custom Lambda test
* Create Amazon API Gateway
    > It will expose the Lambda function to the Internet as configured API
* Public web site
    > UI to retrieve information from DynamoDB via Lambda functions
* Tie the three services together to build a functional serverless web app, and deploy it live on the web.

















## How to use

### Pre-requirement: Set AWS environment variables
```
$ export TF_VAR_access_key=<your_key>

$ export TF_VAR_secret_key=<your-secret>

$ export TF_VAR_region=<your_region>
```

### Initialize a working directory

`$ cd lamp_intrastructure/`

`$ terraform init`

### Create an execution plan

`$ terraform plan`

### Apply the changes required to reach the desired state of the configuration

`$ terraform apply`

### Delete infrastructure
> Before to run command delete manually the RDS mysql instance(you will be prompt with securities questions)

`$ terraform destroy`

## How to test?

When applied the configuration `terraform` will show us the next output:

```
Outputs:

db_endpoint = terraform-20181102155541101800000001.cfi372mmcqsi.us-east-1.rds.amazonaws.com:3306
web_server_public_ip = 18.209.111.9
```

Use the `db_endpoint` and `web_server_public_ip` for the next steps.

### Open the Address Book Web App page

Find on EC2 the "IPv4 Public IP" address(`web_server_public_ip`) of the "Web Server" instance and open it in a web browser.

### Login in the web app and try some CRUD operations

Find the DB endpoint( `db_endpoint`) on the "Connect" section of the RDS mysql created instance.

Using the DB endpoint and credentials(can be found on the 9-rdsDbResources.tf file) login in the app.

Create, edit or remove contacts to test the web app.
