# Project1
#
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![TODO: (Project1/screenshot.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly resiliant, in addition to restricting access to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?_

they protect availability and the jump box allows you secure acees to monitor and make changes without leaving the server itself open

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the files and system status.
- _TODO: What does Filebeat watch for?_
any changes to the files on the system
- _TODO: What does Metricbeat record?_
activity to and from the server

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.1.0.8   | Linux            |
| web 1    |          | 10.1.0.10  | Linux            |
| web 2    |          | 10.1.0.11  | Linux            |
| elk      |          | 10.0.0.8   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: My personal Home External IP

Machines within the network can only be accessed by other machines in the network.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_
the jump box at 10.1.0.8

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | home external IP 10.1.0.10 10.1.0.11  |
| web 1    | no                  | 10.1.0.11 10.0.0.8   |
| web 2    | no                  | 10.1.0.10 10.0.0.8   |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: it allowed us to set up all servers to communicate back all in one step as opposed to individually, it could also be used to set up more the same way without errors

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- Install Docker
- Install pip3
- Install docker python module
- Increse virtual memory
- Use Incresed memory
- Download and launch elk docker container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: 10.1.0.10 and 10.1.0.11

We have installed the following Beats on these machines:
- _TODO: 10.1.0.10 file beat 10.1.0.11 file beat

These Beats allow us to collect the following information from each machine:
- _TODO: Filebeat - collects any file changes and logs them

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the elk-playbook.yml file to /etc/ansible/.
- Update the /etc/ansible/ansible.cfg file to include your intended elk server ip address
- Run the playbook, and navigate to your elk server to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_ elk-playbook.yml coppied to /etc/ansible/ansible.cfg
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_ etc/ansible/ansible.cfg then you pick a group ex. web_servers then you add your servers ip to the list then you designate the group in the yml file so when it deploys it attaches to the right servers
- _Which URL do you navigate to in order to check that the ELK server is running? external ip of server:5601/app/kibana

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._

to git

run: git clone (the coppied clone address from git hub)

to upload
in the top most directory of the git files

run : git add .

git commit -m "number your commits ex. first commit"

git push
