# BeyondMD Interview Assessment

## Topic

- Make a simple page using HTML, CSS, and/or javascript that displays “Hello BeyondMD!“, and then dockerize it. It must run using docker compose.
- Write a script that collects and reports various system health information, such as CPU, memory, disk usage, active users, and/or running processes for a debian server.
- Create an idempotent Ansible playbook that automates the installation and configuration of Docker on a Debian bookworm host, ensuring it correctly handles repeated executions without unnecessary changes to the system state. Bonus points if you use vagrant as a local testing environment for your ansible playbook. I personally really like the "debian-sandbox/bookworm64" vagrant image.

## Step 1

Wrote a sample HTML5/CSS3 script which displays the message "Hello BeyondMD!" as pictured below

![Img 1](https://github.com/yankev07/BeyondMD_Interview/blob/7909def7a3dfd6cf203f9c3742fa35d68a66b8e3/img/Screenshot%202023-11-14%20at%201.35.03%20AM.png)

After writing the HTML script and testing locally that the output is correct, the next step is to containerize our simple webpage
For that, we write a Dockerfile which pulls the official image of https from docker hub
We cna also use a docker-compose.yml file which will specify the ports mapping

Note: Our port 8080 was already busy during this exercise, so we used the port 3000 instead (Subtle ReactJS reference here!)

Once everything looks good, we build our docker image using the command below:
