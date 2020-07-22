[![CircleCI](https://circleci.com/gh/dhruveshshah1/devops4.svg?style=svg&circle-token=7a52a4956bc7241e7c926c860e4f2964adc5fb87)](https://app.circleci.com/pipelines/github/dhruveshshah1/devops4)

# Cloud DevOps, Scaling Microservices

The project's aim is to use kubernetes to operationalize a machine learning microservice. The service uses API calls to make predictions (inferences) about housing prices. According to many characteristics, the model was trained to forecast housing prices in Boston, such as mean rooms in a home and data on highway access, teacher-to-pupil ratios etc.

### Installing

- Docker
- Virtualbox
- Kubernetes and Minikube

###Setup the Environment
Create a virtualenv and activate it
Run 'make install' to install the necessary dependencies


### Files explanation
- config.yml: CircleCI configuration file for running the tests
- app.py: Python flask app that serves  predictions  about housing prices through API calls
- Dockerfile: This is the Dockerfile which builds the image
- make_prediction.sh: Sending a request to the Python flask app to get a prediction, for localhost
- Makefile: includes instructions on environment setup and lint tests
- Make_prediction2.sh: Sending a request to the Python flask app to get a prediction, for minikube kubernetes
- run_docker.sh: file to be able to get Docker running, locally
- run_kubernetes.sh: file to run app in kubernetes
- upload_docker.sh: file to upload image to docker


### Run the project


1. Starting a local cluster, type the terminal command: 
```
minikube start
```

2. Deploying in kubernetes run:
```
./run_kubernetes.sh
```

3. After calling run_kubernetes.sh, and seeing a pod that is up and running, make a prediction using a separate terminal tab and run 
```
./make_prediction.sh
```

4. Deleting the cluster
```
minikube delete
```

