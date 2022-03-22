# PlanA DevOps Challenge 1

### Introduction

---

This challenge is about using creating and containerizing a simple web application that returns a custom JSON object on accessing its root ('/') path.

### Building the Image

---

The Dockerfile in the root of the repository contains well-commented steps taken during the image build.

I used node:16.14.2-alpine as the base image to reduce size.

The image is publicly available on Dockerhub at [siji147/plan-a-challenge-1](<https://hub.docker.com/r/siji147/plan-a-challenge-1>)

You can run the following command to pull the image from Dockerhub:

```bash
docker pull siji147/plan-a-challenge-1:1
```

### Running the Container

---

**To run the container using Docker**, make sure [Docker](https://docs.docker.com/get-docker/) is installed on the computer and run the following command:

```bash
docker run -p 3000:3000 siji147/plan-a-challenge-1:1
```

The application has been configured to listen on port 3000. If you want to specify a custom port for the application to run, use the following command:

```bash
docker run -p <custom-port>:3000 siji147/plan-a-challenge-1:1
```

where custom-port is your custom port number.

You can access the application by going to the URL http://\<server-ip\>:\<port-number\> e.g. http://localhost:3000.

**To run the container as part of a Kubernetes cluster**, verify that `kubectl` is installed and you have a Kubernetes cluster either locally using `minikube` or in the cloud.

Please follow [this link](https://kubernetes.io/docs/tasks/tools/) to install kubectl and minikube if you don't have them installed already.

After installing `kubectl` and `minikube`, you can start `minikube` by running the command:

```bash
minikube start
```

Then apply the Kubernetes configuration/manifest file at the root of the repository using the command:

```bash
kubectl apply -f k8s-manifest.yaml
```

After applying the manifest, a deployment and service components (named `plan-a-deployment` and `plan-a-service` respectively) will be created in the namespace `plan-a-namespace`.

You can access the application by running the command:

```bash
minikube service plan-a-service -n plan-a-namespace
```

The application will be automatically opened in your default browser and it will listen on port 32000 which is the configured nodePort in the Kubernetes manifest.
