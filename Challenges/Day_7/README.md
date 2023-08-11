# Day 7: Mastering Remote Server Management and Web App Deployment

In today's challenge, we were tasked with creating a shell script that automates the deployment of docker containers into two remote servers. This challenge required me to use the remote command execution feature of `ssh`  and copy files from the master server using `scp`. Four shell scripts and one Dockerfile were written to automate the deployment.

The shell scripts are:
- `remote_execute.sh` - which remotely executes commands to all the remote servers listed within it.
- `secure_transfer.sh` - To transfer files and folders from master to remote servers
- `deploy_app.sh ` - To run deployment-related commands in the remote servers
- `main.sh` - To start the deployment procedure

## Steps
1. Establish key-based ssh authentication between the master and two remote servers. For this, I referred to this video https://www.youtube.com/watch?v=S1a7RmqeZ5E&t=185s
![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/9294fb64-669a-4772-9997-ce13b9201e70)

![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/4cd2685c-9917-47ab-9ed6-ca715820fa59)

2. Install docker in the remote servers using the `remote_execute.sh` script
![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/00434b00-cf15-4139-83a7-fda5fcb24ca2)

3. Checking docker in both the clients
![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/4f684671-62a7-4051-8361-3ee655f5a23f)

![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/5d03e543-0037-445c-923d-9e31146d52fc)

3. Add the user to the docker group
![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/c87692ce-d29f-49be-b507-7c47f9324b7c)


4. Reboot the remote servers (this is important for docker to work)
5. Install nginx in the remote servers
![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/bfe96b4b-805d-4c45-94d5-f06650a1b133)


6. Write Dockerfile for your application, I used a python flask application for this project.
![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/7ff8aa11-6cfa-4bc2-a4c7-dd3a1579c4bb)


8. Configure nginx-reverse-proxy. conf to redirect requests from port 80 to my container (port 5000)

9. Run `main.sh` which uses `remote_execute.sh` and `secure_transfer.sh` scripts to start the deployment to remote servers

![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/61099f82-7da2-4f17-9ef2-c2d9659e03a7)



Feel free to contribute to my project and let's keep learning!
