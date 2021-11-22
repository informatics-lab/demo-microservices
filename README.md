# demo-microservices
A toy example demonstrating microservices


### Bootstrap

The `bootstrap.sh` script creates a S3 bucket to store packaged cloud-formation templates.

### Deploy

The `deploy.sh` script deploys the nested stacks by first retrieving the bucket name from the bootstrap stack, then
running `aws cloudformation package` to convert local templates into `package.yaml` a template with the
local names replaced by their S3 locations. Finally, it runs `aws cloudformation deploy package.yaml` to
deploy the nested stacks.
