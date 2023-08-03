# Task1: Monitoring Process

## "ProcessGuard" - Your Process Monitoring Companion!

The script will detect that the Nginx process is not running and attempt to restart it. It will display messages indicating the attempt to restart the process.
The script will attempt to restart the process automatically 3 times, and after that, It sends the mail.

### Running "ProcessGuard" without installing the nginx
![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/1ad0fc27-5165-4bd6-ac31-315c9fa0d4d0)

I've configured sending mail using the "mutt" mail utility. Mutt is a command-line email client for Unix-like systems that allows users to read, compose, and send emails from the terminal. Check **configure_mail_utility.md** to see how to install & configure 
"mutt" mail-utility" for sending mail from a Linux terminal.

![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/104898d8-c284-40a4-a1d0-6fa0ef988722)

**Let's check the same script after installing nginx.**

To install Nginx on Ubuntu, you can use the package manager apt. Here are the steps to install Nginx:

- **Update your package list:**
Open a terminal and run the following command to update your package list:

```
sudo apt update
```
- **Install Nginx:**
After updating the package list, use the following command to install Nginx:

```
sudo apt install nginx -y
```
- **Start Nginx service:**
  Once the installation is complete, Nginx will start automatically. However, you can explicitly start it with the following command:

```
sudo systemctl start nginx
```

### Running "ProcessGuard" after installing the nginx

![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/ebdb660f-2b4d-4cac-b3a5-82fe88e60357)


**Let's now check the same script after stopping the nginx.**

You can stop the Nginx service using the following command:
```
sudo systemctl stop nginx
```
### Running "ProcessGuard" after stopping the nginx

![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/a5d676f2-fcfd-4976-89df-5875185344b7)

  

