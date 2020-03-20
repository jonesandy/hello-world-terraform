<img src="./_docs/logo.png" align="right" height="200px" />

# Terraform hello world


----

Basic introduction to learning terraform and infrastructure as code. Built following along to a tutorial and modified when needed.

## Usage

To run locally ```git clone```.

You will need to create a ```terraform.tfvars``` file in the root directory to hold your secret keys for AWS.

To create AWS infrastructure you will need to create an EC2 key-pair and name it ```PluralsightKeys```. The ```.pem``` file will also need to be stored in the root folder.

To run the config type

```bash 
terraform init
```

Then you can run

```bash
terraform plan -out <nameofyourfile>.tfplan
```

Then to create and implement the plan

```bash
terraform apply "<nameofyourfile>.tfplan"
```

To delete the infrastructure after testing run

```bash
terraform destroy
```
