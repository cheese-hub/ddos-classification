# DDoS Classification

## Description of the scenario

Distributed Denial-of-Service (DDoS) attack is a type of network attack that targets critical systems such as servers
websites or network resources by temporarily or permanently disrupting connection to the network host, causing a denail of service
for users. A typical DDoS attack is accomplished by flooding the target with excess traffic to render the service offline. DDoS
attacks are difficult to prevent and pose several information and business risks.

This repository contains an example of a binary classification, primarily logistic regression, on DDoS network traffic data. Instructions are
provided on a way to conduct a machine learning analysis on the dataset and read and understand the data and evaluation reports.

## Target Audience

### Instructors

If you are an instructor teaching cybersecurity concepts, you can use this example to provide a better understanding of
DDoS attacks as well as understand binary classifiers and mathematical models used in machine learning. You can also modify the
features used for the machine learning training and gauge the accuracy of the model.

### Students

If you are a student in a cybersecurity class, or, a budding programmer with an interest in the fields of cybersecurity or machine learning,
this notebook provides an easy way to explore network traffic data and understand how DDoS attacks can be predicted with the help of
binary mathematical models such as logistic regression.

## Design and Architecture

This demonstration is designed as a single Docker container that hosts a jupyter notebook. The jupyter notebook contains instructive material
on how to read, clean and explore the data. Instructions on selecting features, building the logistic regression model and printing evaluation
reports are also contained in the jupyter notebook.

## Installation and Usage

The recommended approach to running this container is on CHEESEHub, a web platform for cybersecurity demonstrations. CHEESEHub
provides the necessary resources for orchestrating and running containers on demand. In order to set up this application to be
run on CHEESEHub, an *application specification* needs to be created that configures the Docker image to be used, memory and
CPU requirements, and, the ports to be exposed. The JSON *spec* for this SQL Injection demonstration can be found here **(FIXME)**

CHEESEHub uses Kubernetes to orchestrate its application containers. You can also run this application on your own Kubernetes
installation. For instructions on setting up a minimal Kubernetes cluster on your local machine, refer to minikube **(FIXME)**

Before being able to run on either CHEESEHub or Kubernetes, a Docker image needs to be built for this application container.
The container definition can be found in the *Dockerfile* in this repository. To build the container, run:

``
docker build -t <image tag of your choice> .
``

Once a Docker image has been built, you can run this container using just the Docker engine:

``
docker run -d -p 8888 <image tag from above>
``

Since the user facing interface of the container is the Jupyter notebook we expose port 8888 to be accessible on the host machine.

### Usage
On navigating to the URL of the container in your browser, you will be presented with a Jupyter notebook interface displaying a list of files
and folders. Click to select the ddos-classification.ipynb Jupyter notebook to begin. The notebook includes a step-by-step overview of how to conduct
the machine learning analysis on the network traffic data using various python libraries. The code can be run in the code cells within the jupyter                            
notebook using the "run" command.

## How to Contribute

To report issues or contribute enhancements to this application, open a GitHub issue.
