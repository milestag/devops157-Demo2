<h1>DevOps 157 Demo 2  - SoftServe study program</h1>
<hline>
<div align="center"><img src="https://github.com/milestag/devops157-Demo2/blob/master/title.jpg?raw=true"></div>
<h2>Project description</h2>
This application is intended to demonstrate the capabilities of the docker engine and its advantages over classic virtual machines.
The environment consists of a load balancer, database, and some web servers. The whole environment is described in the docker compose file and started with one command.
By default starts Haproxy load-balancer, 2 web servers with a pre-build ASP.NET Core application and a MSSQL database server.
<hline>
<h2>Goals</h2>
The goal of the project is to demonstrate the using of Docker microservices for deploying Microsoft ASP.NET Core applications using load balancing and MSSQL Database server.
  <hline>
<h2>Tools</h2>
    <ul>
      <li>Docker-Toolbox version 18.03.0-ce, build 0520e24302</li>
      <li>Microsoft Visual Studio 2017 Community Edition</li>
      <li>VirtualBox 5.2.26 r128414 (Qt5.6.2) by Oracle</li>
      </ul>
      <hline>
<h2>Directory Structure</h2>
 <ul>
 <li>Publish - folder with .zip compressed ASP.NET project</li>
 <li>Preview - folder contains images used by repository</li>
 </ul> 
<h2>Files</h2>
<p><strong>Dockerfile</strong> - configuration file for Docker engine for build ASP.NET Core Application Container.</p>
<p><strong>dbo.Student.sql</strong> - External SQL script for attaching MSSQL Database at MSSQL Docker Container.</p>
<p><strong>docker-compose.yml</strong> - Docker-Compose script for running complete microservice environment and configure them using indepotential principals.</p>
<hline>
<h2>Usage:</h2>
<ul>
  
  <li>1. Install Docker engine from "https://www.docker.com/";</li>
  <li>1.1 Install Virtualbox software from "https://www.virtualbox.org/wiki/Downloads";
  <li>2. Copy file "docker-compose.yml" to you future virtual environement project directory. For example "D:\Demo2";</li>
  <li>3. Copy file: "dbo.Student.sql"	to you project directory;</li>
  <li>4. Download Project file "Publish.zip" From Github repo url "https://github.com/milestag/devops157/blob/master/Publish/Publish.zip" to project directory;</li>
  <li>5. Execute PowerShell command "docker-compose up --scale webasp=2" from target directory. Example "D:\Demo2\";</li>
  <li>6. Wait for Docker engine run all microservices.</li>
  <li>7. Wait for end of deployment process and check the result using yur favorite web browser at ip adress: 192.168.99.100;</li>
  </ul>
<hline>
<h2>Summary</h2>
Globally we have started environment based Docker Engine, with MSSQL Database, ASP.NET Core Runtime Web Server and load Balancer with Sticky Sessions  and automatic scale of Web containers. Docker-Compose script create and config new web site bind to ip adress 192.168.99.100.
  
