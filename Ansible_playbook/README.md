# Ansible Apache Deployment Project

This project demonstrates how to use Ansible to automate the installation and configuration of Apache web servers on multiple EC2 instances.

## Features
- Installs Apache using Ansible
- Starts and enables Apache service
- Deploys a custom index.html page
- Works on multiple hosts using inventory

## Files
- first-playbook.yaml – Main Ansible playbook  
- inventory1.ini – Inventory file (sample format)  
- index.html – Web page deployed on servers  

## Usage

```bash
ansible-playbook -i inventory1.ini first-playbook.yaml
