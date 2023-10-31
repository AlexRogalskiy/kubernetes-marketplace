#!/bin/sh

helm repo add kubefirst https://charts.kubefirst.com
helm repo update

helm install kubefirst --set=console.installMethod=civo-marketplace --set=kubefirst-api.installMethod=civo-marketplace --version 2.2.16 --create-namespace --namespace kubefirst --wait kubefirst/kubefirst
