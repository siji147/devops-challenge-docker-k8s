# DevOps Challenge

This challenge is designed to test your level of familiarity with development and operations tools and concepts.

## Task

Create a simple microservice in **any** programming language of your choice, as follows:

- The application should be a web server that returns a JSON response, when its `/` URL path is accessed:

```json
{
  "timestamp": "<current date and time>",
  "hostname": "<Name of the host (IP also accepted)>",
  "engine": "<Name and/or version of the engine running>",
  "visitor ip": "<the IP address of the visitor>"
}
```

- Create a Dockerfile for this microservice and publish the image to Docker Hub. Your application must be configured to run as a *non-root user* in the container.

- Create a Kubernetes manifest in YAML format, containing a Deployment and a Service, to deploy your microservice on Kubernetes. Your Deployment must use your public Docker image.

- Publish your code, Dockerfile, and Kubernetes manifests to a public Git repository in a platform of your choice (e.g. GitHub, GitLab, Bitbucket, etc.), so that it can be cloned and tested.

## Important

Your task will be considered successful if another engineer is able to deploy your manifest to a running Kubernetes cluster and use your microservice correctly.

- Code quality and style: your code must be easy for others to read, and properly documented when relevant.

- Container best practices: your container image should be as small as possible, without unnecessary bloat.

Imagine that someone with less experience than you will need to clone your repository and deploy your microservice. With that in mind, you must provide ALL the instructions they will need to do that successfully. These must include any prerequisites for deployment, mention of needed tools and links to their installation pages, how to configure credentials for the tool of your choice, and what commands to run for bringing your application to life.

We want to see your ability to properly document and communicate about your work with the team.
