<h1>DevOps 157 Demo 2  - SoftServe study program</h1>
<hline>
<div align="center"><img src="https://github.com/milestag/devops157-Demo2/blob/master/title.jpg?raw=true"></div>
<h2>Project description</h2>
This project is a DevOps-157 presentation page, developed with Microsoft ASP.NET application for Demo1 DevOps Windows study programm by SoftServe company. Page represents information about course, technoligies, students and company. Page use MSSQL database engine to store and render "Students list".
<hline>
<h2>Goals</h2>
The project goal is to get acquainted with the technologies of development of Web applications on the Windows platform. Automate the creation of environments to run applications based on Windows 2018-2018 Server. Setting up the environments for application deployment, including IIS Web Server configuration, MSSQL Server and others.
  <hline>
<h2>Tools</h2>
    <ul>
      <li>Microsoft Visual Studio Community 2017 ver.15.9.7</li>
      <li>Vagrant 2.2.3 by HashiCorp</li>
      <li>VirtualBox 5.2.26 r128414 (Qt5.6.2) by Oracle</li>
      </ul>
      <hline>
<h2>Directory Structure</h2>
 <ul>
 <li>Publish - folder with .zip compressed ASP.NET project</li>
 <li>Preview - folder contains images used by repository</li>
 </ul> 
<h2>Files</h2>
<p><strong>Vagrantfile</strong> - configuration file for Vagrant orcestration engine for automatic deploy of different virtual environements.</p>
<p><strong>dbattach.sql</strong> - External SQL script for attaching MSSQL Database at deployment environement.</p>
<p><strong>cope.ps1</strong> - External PowerShell script for provision virtual environment, installing missing tools, software and configure them using indepotential principals.</p>
<p><strong>deploy.bat</strong> - EXAMLE of External PowerShell script to run seamless deployment process of application recently build and published by Visua Studio.</p>
<hline>
<h2>Usage:</h2>
<ul>
  
  <li>1. Install Vagrant engine from "https://www.vagrantup.com/";</li>
  <li>1.1 Install Virtualbox software from "https://www.virtualbox.org/wiki/Downloads";
  <li>2. Copy file "Vagrantfile" to you future virtual environement project directory. For example "D:\VM01";</li>
  <li>3. Copy files: "cope.ps1", "dbattach.sql"	to you Vagrant project directory;</li>
  <li>4. Download Project file "Publish.zip" From Github repo url "https://github.com/milestag/devops157/blob/master/Publish/Publish.zip" to Vagrant project directory;</li>
  <li>5. Execute PowerShell command "Vagrant up" from target directory. Example "D:\VM01\Vagrant up";</li>
  <li>6. Wait for Vagrant engine downlad virtualbox instances, install, run end provision them with provisioning script. Make some  coffe, you have at least 30-40 min.</li>
  <li>7. Wait for end of deployment process and check the result using yur favorite web browser at ip adress: 192.168.56.10;</li>
  </ul>
<hline>
<h2>Deployment diagram</h2>
<div align="center"><img src="https://github.com/milestag/devops157/blob/master/Preview/Diagram.jpg?raw=true"></div>
<hline>
<h2>Summary</h2>
Globally we have started environment based on Windows 2016 Server, with installed MSSQL Database Server 2014, Internet Information Services Web Server, Chocolate packet manager. Provision script create and config new web site bind to ip adress 192.168.56.10. Windows user credentials: Vagrant@vagrant.
  
