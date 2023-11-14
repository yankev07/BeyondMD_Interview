# BeyondMD Interview Assessment

## Topic

- Make a simple page using HTML, CSS, and/or javascript that displays “Hello BeyondMD!“, and then dockerize it. It must run using docker compose.
- Write a script that collects and reports various system health information, such as CPU, memory, disk usage, active users, and/or running processes for a debian server.
- Create an idempotent Ansible playbook that automates the installation and configuration of Docker on a Debian bookworm host, ensuring it correctly handles repeated executions without unnecessary changes to the system state.
- Bonus points if you use vagrant as a local testing environment for your ansible playbook. I personally really like the "debian-sandbox/bookworm64" vagrant image.

## Step 1

Wrote a sample HTML5/CSS3 script which displays the message "Hello BeyondMD!" as pictured below

![Img 1](https://github.com/yankev07/BeyondMD_Interview/blob/7909def7a3dfd6cf203f9c3742fa35d68a66b8e3/img/Screenshot%202023-11-14%20at%201.35.03%20AM.png)

After writing the HTML script and testing locally that the output is correct, the next step is to containerize our simple webpage
For that, we write a Dockerfile which pulls the official image of https from docker hub
We cna also use a docker-compose.yml file which will specify the ports mapping

Note: Our port 8080 was already busy during this exercise, so we used the port 3000 instead (Subtle ReactJS reference here!)

Once everything looks good, we build our docker image using the command below:

![Img 2](https://github.com/yankev07/BeyondMD_Interview/blob/6d76d3c8d25ec39441e8479d95a150657897396f/img/Screenshot%202023-11-14%20at%2012.30.40%20AM.png)

We then run the generated docker image

![Img 3](https://github.com/yankev07/BeyondMD_Interview/blob/1d575920c552771a34f60020d22243a367922d66/img/Screenshot%202023-11-14%20at%2012.31.06%20AM.png)

Now we can check at http://localhost:3000/ and see the webpage live from the browser window

![Img 4](https://github.com/yankev07/BeyondMD_Interview/blob/52c2269c90fcdaa14404ba9c153192f2b28ccb41/img/Screenshot%202023-11-13%20at%209.20.55%20PM.png)


## Step 2

By writing a short bash script, we can output various system health information from a Debian bookworm server as pictured below:

![Img 5](https://github.com/yankev07/BeyondMD_Interview/blob/cc8268539783a313663e8d1c441e69b4501ba63a/img/Screenshot%202023-11-14%20at%2012.55.47%20AM.png)


## Step 3

The installation of Docker can be automated on a Debian bookworm server using a ansible playbook. The playbook contains step-by-step commands and parameters detailing each step of the installation of Docker on Debian OS
We can test our playbook by using the "ansible-playbook" command.
In our case, the remote server was secured using a private key for ssh connections, so we had to include an extra "--private-key" parameter in the command as pictured below:

![Img 6](https://github.com/yankev07/BeyondMD_Interview/blob/4b69387952d1879cba167becd9c2435466d0c044/img/Screenshot%202023-11-14%20at%201.09.22%20AM.png)
