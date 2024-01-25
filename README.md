<a name="readme-top"></a>

Openwisp Setup - In Working
=================

Tested on server **Ubuntu 22 LTS** and routers **OpenWRT** .

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#prepare-the-environemt">Prepare the environment</a>
      <ul>
        <li><a href="#hardware-requirements">Hardware Requirements</a></li>
        <li><a href="#software-requirements">Software Requirements</a></li>
        <li><a href="#choose-working-directory">Choose Working Directory</a></li>
      </ul>
    </li>
    <li>
      <a href="#install-openwisp2-controller">Install Openwisp2 Controller</a>
      <ul>
        <li><a href="#folder-content">Folder content</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Hahatay has an internal network set up to provide internet connectivity to the different project locations.
Hahatay's intranet is a complex OpenWRT network, which distributes internet to both project workers and external parties.

OpenWisp is used to better manage the network in a centralised and more organised way. 
This repository focuses on the installation and configuration of this management layer.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Prepare the envinroment

To install openwisp in the server, the steps indicated in the [documentation](https://github.com/openwisp/ansible-openwisp2) have been followed.
It is installed by an ansible playbook.


### Hardware Requirements

Have an Ubuntu OS with 

- 2 CPUs
- 2048 MB Memory
- 50 GB Disk space

### Software Requirements

In the local machine that you are run ansible, install the recommended packages from the official documentation. Follow the [Install Ansible](https://github.com/openwisp/ansible-openwisp2?tab=readme-ov-file#install-ansible) and [Install this role](https://github.com/openwisp/ansible-openwisp2?tab=readme-ov-file#install-this-role) sections. 

### Choose Working Directory

Create a directory in your local machine to clone this repository.

Eg.

    mkdir ~/openwisp-project
    cd ~/openwisp-project
    git clone https://github.com/aucoop/openwisp-hahatay.git

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Install Openwisp -->
## Install Openwisp2 controller

Go to openwisp2-ansible-playbook folder in the repository.

### Folder content

- playbook - used to define all the tasks to install Openwisp, Openwisp2-radius, openwisp2-network-topology and openwisp-monitoring (installed by default)
- hosts - in this file we have the hostname where the OpenWisp will be reachable.
- install - script that launch the command to deploy the playbook

### Installation

In order to indicate to the network which is the IP of the openwisp hostname, we can use two options:
1. DNS Server: this is the easiest option if you have a DNS Server running in your network. The IP address of the server where you are going to deploy Openwisp has to be added to the DNS Server to reach the given hostname.
2. Individual device configuration: Otherwise, the IP address of the hostname has to be indicated to the local machine that will run the ansible playbook. Also in the future when adding a device (router) to openwisp, you will have to manually add the hostname IP.
To do that, you have to access `/etc/hosts` and add the following information:


    <server-ip-address>	<openwisp-hostame>

Eg.


    192.168.8.142	openwisp2.mydomain.com

Now, you are ready to run the `install.sh` file.

    sh install.sh

If everything goes well, all the task has to be finished sucessfully and you can reach openwisp in the hostname given.
The initial credentials to access Openwisp are **admin for user and password**.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- Add devices to Openwisp -->
## Add OpenWRT devices to Openwisp
