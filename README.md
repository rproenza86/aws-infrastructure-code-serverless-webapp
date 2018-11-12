# Serverless Web Apps using Amazon DynamoDB

> Terraform scripts to build the AWS environment where to deploy interactive serverless web applications which uses Amazon API Gateway calls to send requests to AWS Lambda backends that query Amazon DynamoDB data.

```
Tested using:

Terraform v0.11.10
+ provider.aws v1.42.0
```

## Use case description
Build and run an application and services without needing to provision, manage, and scale infrastructure.

Design, build, and deploy an interactive serverless web application, using a simple HTML/JavaScript web interface which uses Amazon API Gateway calls to end requests to AWS Lambda backends that query Amazon DynamoDB data.

### Infrastructure objectives

- Create Amazon DynamoDB
  > Non-sql database to store the application data
- Create the necessary IAM roles and polices
  > To access the application data
- Create AWS Lambda
  > It will interact with DynamoDB and retrieve in several different way
- Create custom Lambda test
- Create Amazon API Gateway
  > It will expose the Lambda function to the Internet as configured API
- Public web site
  > UI to retrieve information from DynamoDB via Lambda functions
- Tie the three services together to build a functional serverless web app, and deploy it live on the web.

## How to use

### Pre-requirement: Set AWS environment variables

```
$ export TF_VAR_access_key=<your_key>

$ export TF_VAR_secret_key=<your-secret>

$ export TF_VAR_region=<your_region>
```

### Initialize a working directory

`$ cd serverless_intrastructure/`

`$ terraform init`

### Create an execution plan

`$ terraform plan`

### Apply the changes required to reach the desired state of the configuration

`$ terraform apply`

### Delete infrastructure

`$ terraform destroy`

## How to test?

When applied the configuration `terraform` will show us the next output:

```
Outputs:

Get heroes list API endpoint = https://xdlugc2266.execute-api.us-east-1.amazonaws.com/DeploySuperAPI/getheroeslist

Get heroes mission details API endpoint = https://xdlugc2266.execute-api.us-east-1.amazonaws.com/DeploySuperAPI/getmissiondetails

api_gateway_base_url = https://xdlugc2266.execute-api.us-east-1.amazonaws.com/DeploySuperAPI

dynamoDb_created_table_name = SuperMission
```

Use the `endpoint` info to test your api directly using this curl calls:

> Get heroes list

```bash
    curl -X POST \
    <Use your "Get heroes list API endpoint" output value> \
    -H 'Cache-Control: no-cache' \
    -H 'Content-Type: application/json' \
    -H 'Postman-Token: 84ac228b-d6bc-4768-9a28-a21348f68275' \
    -d '{}'
```

> Get missing details for an specific heroe

```bash
    curl -X POST \
    <Use your "Get heroes mission details API endpoint" output value> \
    -H 'Access-Control-Request-Headers: content-type' \
    -H 'Access-Control-Request-Method: POST' \
    -H 'Cache-Control: no-cache' \
    -H 'Content-Type: application/json' \
    -H 'Origin: null' \
    -H 'Postman-Token: 8c2ee690-1e93-4784-9981-654cc7d6515c' \
    -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3604.0 Safari/537.36' \
    -d '{
    "superhero": "Batman"
    }'
```

### Generate the SDK For Your API

On the `Stage` editor of your `ServerlessSuperHeroesApi` API Gateway, click the `SDK Generation` tab, then configure:

<ul>
<li>
<strong>Platform:</strong> <em>Javascript</em>
</li>
<li>Click <span style="background-color:#257ACF;font-weight:bold;font-size:90%;color:white;border-radius:5px;padding-top:3px;padding-bottom:3px;padding-left:10px;padding-right:10px;">Generate SDK</span>
</li>
</ul>

Next:
<ul>
<li><p>Save the zip file to a location on your computer.</p></li>
<li><p>Extract the content of the JavaScript zip file you downloaded in the <code>serverless_intrastructure/files/apiGateway-js-sdk/</code> directory.</p>
<p>There, you will have an HTML page that you will use to test your API.</p>
</li>
</ul>

After that:
<ul>
<li><p>Open index.html located on your <code>serverless_intrastructure/files/apiGateway-js-sdk/</code> directory in your browser.</p>
<p>You will notice that the drop-down list uses the API Gateway resource <strong>getheroeslist</strong> to invoke the <strong>getheroeslistFunction</strong> Lambda function.</p>
</li>
<li><p>Using the index web page, retrieve mission details.</p></li>
<li><p>Review the output.</p></li>
</ul>

<p><strong>Note</strong> To retrieve mission details using the index web page, select the Super Hero name in the drop down list and then click <strong>GO</strong> to display the Mission Status and Mission Dossier</p>

