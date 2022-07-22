# Augmented-and-Automated-Underwriting
A final Year Project about Augmented and Automated  Underwriting in Insurance using Machine Learning

## Project Members
- Kyaka Herman Ceaser
- Ddombo Nasser
- Olara Obadia Samuel
- Wanda Eric

## To Do
- Document the project SRS
- Get a Dataset to train or algorithm
- Setup a working environment for project development
- Clean dataset to get train and test sub datasets
- Save our Model
- Create an API that serves our Machine learning Model

## Data Collection
We used an already existing dataset to understand the variables that are determinant for Life and Health Insurance.
[Prudential Life Insurance Dataset](https://www.kaggle.com/c/prudential-life-insurance-assessment/)


## API Installation

### Prerequistes
- python3 installed
- pip3 installed
- code editor like VScode

### Setup
- Clone the project from github using `git clone https://github.com/Augmented-and-Automated-Underwriting/augmented-and-automated-underwriting.git` 
- Change directory to the project folder using `cd augmented-and-automated-underwriting`
- Create a virtual env using   `python3 -m venv venv`
- Activate the virtual env using `source venv/bin/activate`
- Run the command  `pip install -r requirements.txt` to install the project requirements.
- Finally run the api using `uvicorn api.main:app --reload`

