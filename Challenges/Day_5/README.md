# Title: Log Analyzer and Report Generator

Today, I took on the role of a system administrator responsible for managing a network of servers. 
As part of my daily tasks, I automated the process of analyzing log files and generating a comprehensive daily summary report using my script - **"Log Analyzer"**! 

- Generating a Sample Log File "**logfile.log**"
  
To demonstrate the functionality of the **log_analyzer.sh** script, we will first generate a sample log file called **logfile.log** using the **log_generator.sh** script provided in the "Day 5" directory of the GitHub repo.

![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/990512c6-82d1-4913-b601-482196d4ed5c)

- Execute the Log Analyzer Script
Run the **log_analyzer.sh** script with the logfile.log as the command-line argument:

```
sudo ./log_analyzer.sh ./logfile.log
```
The script will analyze the log file, and you will see the summary report generated as the output. Additionally, the script will attempt to archive/move the processed logfile.log to a designated directory  (optional enhancement).

![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/3340af8d-d2d8-4634-9a7b-f3066d0b8f50)


### Optional Enhancement: Add a feature to automatically archive or move processed log files to a designated directory after analysis.

- Create "logs" directory under "BashBlaze-7-Days-of-Bash-Scripting-Challenge" repo to make it an archived directory to store the processed log files

  ![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/8b703c5e-d1f9-46ec-adf7-08d189ae902a)

- Check the contents of "logs" directory

  ![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/08d9318d-df3e-43b8-bd91-73bfd0e83170)


    

