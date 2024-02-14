# Kubernetes Alerts

Start a minikube cluster using the following command:

```bash
minikube start --nodes 3 --driver=docker --force-systemd=true
```

Enable the metrics server:

```bash
minikube addons enable metrics-server
```

Install the Prometheus Operator:
