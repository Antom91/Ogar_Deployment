# Make your own agario server on EC2 

## About Project

Project contain docker and ansible to deployment agario server on EC2 Instance

### Requirements

Debian family OS AMI

### Configuration

First of all, you need to configuration ec2 role of project. You need to go to `roles/ec2/vars/main.yml` and set up environment variables.
Second, you can go to `roles/nodejs/vars/main.yml` and change ec2_user (if you use Debian). ec2_user - username of your AMI,it is necessary that Ansible can login to EC2
Then you can change way to your private_key_file in `ansible.cfg`

### Run Ansible Roles

```shell
$ ansible-playbook ogar.yaml
```
After this, Ansible create your EC2 Instance and install Ogar3 on this instance.
