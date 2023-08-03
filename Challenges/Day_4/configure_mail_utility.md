### How to install & configure the "mutt" mail utility to send mail from the aws ubuntu terminal?

To send an email from a Linux machine to a Gmail account using the mutt command, you'll need to have mutt installed and correctly configured. Follow these steps:

- **Install mutt:** If mutt is not already installed on your Linux machine, you can install it using your package manager. For example, on Debian/Ubuntu-based systems, you can use:
 ```
.sudo apt-get update
sudo apt-get install mutt
```
- **Configure mutt:** Create or edit the ~/.muttrc file to set up the necessary configurations. Open the file using a text editor:
 ```
vi ~/.muttrc

```
**Add the following lines to the file:**
```
# Set the from address
set from = "your_email@gmail.com"

# Set the Gmail SMTP server and port
set smtp_url = "smtps://your_email@gmail.com@smtp.gmail.com:465/"

# Set the Gmail account password
set smtp_pass = "your email password/app password"

# Use SSL to secure the connection
set ssl_force_tls = yes

# Save sent emails to a local mailbox
set copy = yes
```

![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/386a03e5-1671-4154-9fe2-de1029280785)

- **Compose and send the email:** To compose an email, you can use the mutt command with the recipient email address as an argument. This will open the mutt editor for you to compose the email.

 ```
mutt recipient@example.com

```
