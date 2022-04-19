#!/bin/bash

# Utility to print examples of Kubernets YAMLs in terminal
# Reference: https://github.com/kubernetes/website/tree/main/content/en/examples

display_help() {
    echo "Usage: kubehow [option]" >&2
    echo
    echo "Available options:"
    echo "ingress       How to create a ingress"
    echo "deployment    How to create a basic deployment"
    echo "service       How to create a basic service"
    exit 1
}


if [ "$1" == "-h" ]; then
  display_help
  exit 0
fi


input=$1
how=${input,,}

ingress=https://raw.githubusercontent.com/kubernetes/website/main/content/en/examples/service/networking/minimal-ingress.yaml
deployment=https://raw.githubusercontent.com/kubernetes/website/main/content/en/examples/controllers/nginx-deployment.yaml
service=https://raw.githubusercontent.com/kubernetes/website/main/content/en/examples/service/nginx-service.yaml

function sep {
    echo "---------------------------------------"
}

function req {
    label=${2^^}
    sep
    echo $label EXAMPLE
    sep
    echo
    curl $1 --silent
}

if [ -n "$1" ]; then
    case $how in
        "ingress")
            req $ingress $how
        ;;

        "deployment")
            req $deployment $how
        ;;

        "service")
            req $service $how
        ;;
    esac
else
  display_help
fi


