#!/bin/bash
if [ ! -d ".venv" ]; then
    echo "Virtualenv doesn't exist, creating it"
    virtualenv -p /usr/bin/python2 .venv
    source .venv/bin/activate
    pip install -r requirements.txt
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
esac
