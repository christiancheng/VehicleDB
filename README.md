# VehicleDB
This is a solution to provide CRUD operations (Create, Read, Update, and Delete) for a Vehicle entity. It is implemented using the Grails framework.

## What is Grails?
Grails is an MVC framework that runs on the Groovy language (which is based on Java).

## Prerequisites
Grails should be installed in order to run this application. There are two ways to install Grails:

1. The easy way to install Grails on bash platforms is to use the Software Development Kit Manager (SDKMAN!). Run the following commands in succession:

  <code>$ curl -s get.sdkman.io | bash</code>

  <code>$ source "$HOME/.sdkman/bin/sdkman-init.sh"</code>

  <code>$ sdk install grails</code>

  Run <code>$ grails -version </code> to verify installation.

2. Alternatively (or on Windows), Grails can be downloaded as a .zip file: 
  * See https://grails.org/download.html for the download
  * See https://grails.org/wiki/Installation for installation instructions.

## Running the application
1. Make sure Grails is installed!
2. Navigate to the home folder of the project: <code>.../mitchell/</code>
3. Type the command <code>grails prod run-app</code>
4. The application can be accessed from any web browser at <code>http://localhost:8080/</code>

## Implementation
This application implements all of the required parameters, as well as all of the optional parameters.
* Usage of either C# or Java: This application is written using Groovy, which is based right off of Java and uses Java syntax.
* Some form of automated testing: Automated testing has been incorporated into the project using the Grails testing framework. To run, use the command <code>grails     test-app</code>
* Some form of in-memory persistence of created vehicle objects: Vehicle object data will persist across server restarts using the H2 database.
* Add validation to your service: Two types of validation are implemented: first, the create and edit views will not allow you to submit invalid properties. Second, Vehicle property constraints prevent invalid properties from being submitted.
* Add filtering to your service: You can filter Vehicles by year, make, or model. Filtering is accessible via the List All Vehicles and List Vehicles By Filter views.
* Write an example client for your service: The client has been implemented as a GUI that you can run straight in your browser!

Enjoy!


<br/><br/>
Developed by Christian Cheng | http://christiancheng.me
