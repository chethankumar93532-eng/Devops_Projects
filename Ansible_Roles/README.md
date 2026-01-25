# Ansible Roles & Ansible Galaxy – Complete Beginner Guide

This repository explains the concepts of **Ansible Roles** and **Ansible Galaxy** in a simple and practical way.  
These are very important topics in real DevOps projects and interviews.

---

## 📌 What is an Ansible Role?

An **Ansible Role** is a structured way to organize automation tasks into reusable components.

Instead of writing everything in one large playbook, a role helps to:
- Keep code clean  
- Reuse automation  
- Maintain and manage configurations easily  

Each role usually performs **one main job**, for example:
- Installing Nginx  
- Configuring Docker  
- Creating users  

👉 Think of a Role as a **complete automation package for one task**.

---

## 📂 Standard Role Directory Structure

When you create a role, Ansible creates the following structure:


roles/
nginx/
tasks/
handlers/
templates/
files/
vars/
defaults/
meta/

### Important folders:

- **tasks/** – Main automation steps  
- **handlers/** – Restart or reload services  
- **templates/** – Dynamic configuration files (Jinja2)  
- **files/** – Static files to copy  
- **vars/** – Variables with high priority  
- **defaults/** – Default variables (low priority)  

---

## ✅ Why Use Roles?

Without roles:
- Large playbooks  
- Hard to read  
- Hard to reuse  
- Difficult to maintain  

With roles:
- Clean folder structure  
- Easy to reuse in multiple projects  
- Professional industry standard  
- Easy debugging and scaling  

---

## 🌐 What is Ansible Galaxy?

**Ansible Galaxy** is the official online repository where users share Ansible roles and collections.

It is like:
> 🟢 “Play Store for Ansible Roles”

From Galaxy, you can download ready-made roles for:
- Nginx  
- Apache  
- MySQL  
- Docker  
- Kubernetes  
- Jenkins and many more  

Website: https://galaxy.ansible.com

---

## 📥 How to Install a Role from Galaxy

Example: Install an Nginx role

```bash
ansible-galaxy install geerlingguy.nginx

### Important folders:

- **tasks/** – Main automation steps  
- **handlers/** – Restart or reload services  
- **templates/** – Dynamic configuration files (Jinja2)  
- **files/** – Static files to copy  
- **vars/** – Variables with high priority  
- **defaults/** – Default variables (low priority)  

---

## ✅ Why Use Roles?

Without roles:
- Large playbooks  
- Hard to read  
- Hard to reuse  
- Difficult to maintain  

With roles:
- Clean folder structure  
- Easy to reuse in multiple projects  
- Professional industry standard  
- Easy debugging and scaling  

---

## 🌐 What is Ansible Galaxy?

**Ansible Galaxy** is the official online repository where users share Ansible roles and collections.

It is like:
> 🟢 “Play Store for Ansible Roles”

From Galaxy, you can download ready-made roles for:
- Nginx  
- Apache  
- MySQL  
- Docker  
- Kubernetes  
- Jenkins and many more  

Website: https://galaxy.ansible.com

---

## 📥 How to Install a Role from Galaxy

Example: Install an Nginx role

```bash
ansible-galaxy install geerlingguy.nginx


▶️ How to Use a Role in a Playbook

Example playbook:
- hosts: web
  become: yes
  roles:
    - geerlingguy.nginx

__________________________________________________________________________________________

Ansible Role Project – Deploy Apache on Multiple EC2
Instances (Ubuntu)
This guide shows how to create a custom Ansible Role using roles structure, Jinja2 templates, handlers, and
inventory with multiple hosts to deploy Apache on two Ubuntu EC2 instances using a single command.
Prerequisites
• Ansible installed on your system • Two Ubuntu EC2 instances running • SSH access with .pem key • Port 22 and
Port 80 open in AWS Security Group
Project Structure
Ansible_Roles/
■■■ apache/
■ ■■■ tasks/
■ ■■■ handlers/
■ ■■■ templates/
■ ■■■ defaults/
■ ■■■ README.md
■■■ inventory.ini
■■■ run_apache.yml
■■■ ansible.cfg
■■■ README.md
Step 1: Create Role Structure
mkdir Ansible_Roles
cd Ansible_Roles
ansible-galaxy init apache
Step 2: Inventory Configuration (2 Instances)
[web]
node1 ansible_host=13.xxx.xxx.xxx ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/Ansible-key.p
node2 ansible_host=3.xxx.xxx.xxx ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/Ansible-key.p
Test Connectivity
ansible -i inventory.ini web -m ping
Step 3: Disable Host Key Checking
[defaults]
host_key_checking = False
Step 4: Default Variables
server_name: mysite.local
Step 5: Jinja2 Template
<VirtualHost *:80>
ServerName {{ server_name }}
DocumentRoot /var/www/html
<Directory /var/www/html>
AllowOverride All
Require all granted
</Directory>
ErrorLog ${APACHE_LOG_DIR}/error.log
CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
Step 6: Tasks File
- name: Install Apache
apt:
name: apache2
state: present
update_cache: yes
become: yes
- name: Copy Apache config using template
template:
src: httpd.conf.j2
dest: /etc/apache2/sites-available/000-default.conf
notify: Restart Apache
become: yes
- name: Enable site config
command: a2ensite 000-default.conf
notify: Restart Apache
become: yes
- name: Start and enable Apache
service:
name: apache2
state: started
enabled: yes
become: yes
Step 7: Handler File
- name: Restart Apache
service:
name: apache2
state: restarted
become: yes
Step 8: Playbook
- hosts: web
become: yes
roles:
- apache
Step 9: Run the Role
ansible-playbook -i inventory.ini run_apache.yml
Step 10: Open Port 80 in AWS Security Group
Add inbound rule: HTTP | Port 80 | Source 0.0.0.0/0
Step 11: Verify in Browser
http://<NODE1_PUBLIC_IP>
http://<NODE2_PUBLIC_IP>
Interview Ready Statement
I created a custom Ansible role with Jinja2 templates and handlers to deploy Apache on multiple Ubuntu EC2
instances using a single playbook and inventory group.

