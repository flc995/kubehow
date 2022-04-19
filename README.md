<img src="https://raw.githubusercontent.com/flc995/kubehow/main/media/kubehow-logo.png" alt="Kubehow" />

# Kubernets YAMLs cheat sheet on your terminal
[![GitHub issues](https://img.shields.io/github/issues/flc995/kubehow)](https://github.com/flc995/kubehow/issues)
[![GitHub forks](https://img.shields.io/github/forks/flc995/kubehow)](https://github.com/flc995/kubehow/network)
[![GitHub Repo stars](https://img.shields.io/github/stars/flc995/kubehow)](https://github.com/flc995/kubehow/stargazers)
[![GitHub last commit](https://img.shields.io/github/last-commit/flc995/kubehow)](https://github.com/flc995/kubehow/commits/main)

Bash script to print on your terminal examples of basic Kubernetes YAMLs

## How to run
Place `kubehow.sh` in your bash scripts folder and create an alias for `kubehow` so you can run the script by simply writing `kubehow`.
Example
```
kubehow ingress
```
Output:
```
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: minimal-ingress
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  ingressClassName: nginx-example
  rules:
  - http:
      paths:
      - path: /testpath
        pathType: Prefix
        backend:
          service:
            name: test
            port:
              number: 80
```

## Contributors Wall
<a href="https://github.com/flc995/kubehow/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=flc995/kubehow" />
</a>