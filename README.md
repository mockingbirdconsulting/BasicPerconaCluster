# ansible-terraform

This repository contains the code to manage and install infrastructure and software for a PerconaDB Galera Cluster

## How to use this repository

1. Clone the repository
2. Run `./bin/launch.sh` with the appropriate argument listed below

### launch.sh arguments

launch.sh allows you to carry out various tasks to help with development and deployment of services.  The following arguments are available:

| Argument | Action | Additional Arguments |
|:--------:|:------:|:--------------------:|
| NONE     | Check for the existence of the Python virtualenv, create it if it does not exist |
| tfinit   | Intialise the Terraform providers and modules |
| tfplan   | Run a Terraform Plan|
| tfinit   | Apply the terraform code |
| tfdestroy| Destroy the infrastructure |
| ansinit  | Initialise the Ansible roles |
| ansapply | Install the cluster using Ansible |

## Developing for this repository

If you wish to contribute to the code, carry out the following steps:

1. Make sure that `virtualenv` is installed on the machine you are working on
2. Clone the repository
3. Create a feature or bug branch (`git checkout -b feature/the_name_of_the_feature` or `git checkout -b bug/the_name_of_the_bug`)
4. Write the tests to meet your problem, run the tests and make sure they are failing
5. Write the code to fix the tests
6. Re-run the tests and make sure they succeed
7. Push the changes up to GitHub
8. Submit a Pull Request and ask for a code review

## Running tests

We use the following test frameworks to ensure that the code meets our quality standards.

| Tool | Description |
|:----:|-------------|
| [ansible-lint](https://github.com/ansible/ansible-lint) | Ensures that Ansible code is formatted correctly and is syntactically valid |
| [Test Kitchen](https://kitchen.ci) | Executes the Ansible code against temporary instances and then runs the test suite |
| [https://www.inspec.io](https://www.inspec.io) | Allows us to write policies and then test our code against them to ensure they are compliant |

In order to run the tests, you can run one of the following commands:

* To test an Ansible role, run `./bin/launch.sh test-ansible <role_name>`
* To test the Terraform Infrastructure, run `./bin/launch.sh test-terraform`

In both cases, you will need to have your AWS Credentials available in the local environment
