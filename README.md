# AWS codelab
A very simple codelab for playing with AWS VPC and EC2.

## Preparation

Make sure to install the following tools:

- AWS CLI (https://aws.amazon.com/cli/)
- [Ruby](https://rvm.io/rvm/install), version >=2.4.0
- Ruby header files for building gems with native extensions (`apt-get install ruby-dev` on Ubuntu systems)
- [Bundler](https://bundler.io/): `gem install bundler`
- [autostacker24](https://github.com/AutoScout24/autostacker24): Run `bundle install` in the root directory of this repo.


## Deploy AWS services via Cloudformation

1. Ensure a AWS profile and set the `AWS_PROFILE` environment variable.
2. Deploy the VPC: `./ci/01-deploy-vpc.sh <your-name> [<step>]`
3. Deploy the yocto httpd: `./ci/01-deploy-yocto.sh <your-name> [<step>]`

## Useful links:

- AWS Cloudformation Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
