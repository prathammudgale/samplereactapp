React App -  CI/CD Pipeline Setup

The project demonstartes how to dockerize a react application and CI/CD pipeline using github actions

Step by step Explanation:

1. Cloned the React app 
  given public repo: https://github.com/prathammudgale/samplereactapp.git

2. Created a New Git Branch - assessments 
  I created a new branch called assessments 
  git checkout -b assessments

3. Dockerizing the Application 
  I added docker file to the root directory which:
      Runs npm install and run npm build
       Uses serve to host the static build
       Exposes port 3000 so it is accessible in the browser

4. Setting up Github Actions CI/CD
    I created github actions which:
     Triggers on every push/pull request to assessment branch
     Install dependencies
     Builds the Docker Image
     Build the react app

5. Published my changes

6. Created a Pull request 
