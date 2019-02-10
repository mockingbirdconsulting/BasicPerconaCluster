#!/bin/bash
if [ ! -d ".venv" ]; then
    echo "Virtualenv doesn't exist, creating it"
    virtualenv -p /usr/bin/python2 .venv
    source .venv/bin/activate
    pip install -r requirements.txt
fi

source .venv/bin/activate

if [ -z "$DO_API_TOKEN" ];then
    echo "Digital Ocean API Token has not been set.";
    echo "Please run 'export DO_API_TOKEN=<YOURTOKENHERE>' and then re-run this script";
    exit 1
fi

case "$1" in
    tfinit)
        cd terraform;
        terraform init;
        cd ..;
        ;;
    tfplan)
        cd terraform
        terraform plan;
        cd ..;
        ;;
    tfapply)
        cd terraform;
        terraform apply;
        cd ..;
        ;;
    tfdestroy)
        cd terraform;
        terraform destroy;
        cd ..;
        ;;
    ansinit)
        ansible-galaxy install -r requirements.yml
        ;;
    ansapply)
        ansible-playbook ansible/playbooks/galera_cluster.yml
        ;;
esac
