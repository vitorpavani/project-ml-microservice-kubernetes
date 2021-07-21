[![CircleCI](https://circleci.com/gh/vitorpavani/project-ml-microservice-kubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/vitorpavani/project-ml-microservice-kubernetes)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operacionalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:

- Test your project code using linting
- Complete a Dockerfile to containerize this application
- Deploy your containerized application using Docker and make a prediction
- Improve the log statements in the source code for this application
- Configure Kubernetes and create a Kubernetes cluster
- Deploy a container using Kubernetes and make a prediction
- Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operacionalize production microservices.**

---

## _Instructions_

**1)** Fire up your favorite console & clone this repo somewhere:

**`❍ git clone https://github.com/vitorpavani/project-ml-microservice-kubernetes.git`**

**2)** Enter this directory:

**`❍ cd project-ml-microservice-kubernetes`**

**3)** Install [python](https://www.python.org/) if not already installed and run this command to create a virtual environment and activate it:

**`❍ make setup`**

**4)** Run this command to install the project dependencies:

**`❍ make install`**

**5)** Run this command to lint the project files:

**`❍ make lint`**

**6)** Run this script to build a docker image for the app and start the app in a docker container:

**`❍ ./run_docker.sh `**

**7)** Run this script to get a prediction from the app running in the Docker container:

**`❍ ./make_prediction.sh `**

**8)** Run this script to upload the docker image to your Docker hub account. Note you'll have to edit the script and change the Docker ID to yours:

**`❍ ./upload_docker.sh `**

**9)** Run this script to run the service in a kubernetes cluster. This script will be run twice to activate the port forwarding. Give some minutes after first run so that the pod can be up and running before attempting port forwarding:

**`❍ ./run_kubernetes.sh `**

**10)** Run this script to get a prediction from the app running in the Kubernetes Cluster after port forwarding is successful:

**`❍ ./make_prediction.sh `**

&nbsp;

## information_source: Files:

- app.py: This is the flask app that runs the service
- Makefile: This file has make commands that allows for easy setup of a project
- Dockerfile: This file has the setup for creating a Docker image for the microservice
- run_docker.sh: This script creates a docker image from the Dockerfile, list the images and starts a container
- make_prediction.sh: This script sends data for prediction using curl and prints the predicted value on the command line
- upload_docker.sh: This script uploads a docker image to docker hub
- run_kubernetes.sh: This script runs the docker image in a kubernetes cluster

&nbsp;

**_Happy coding!_**
