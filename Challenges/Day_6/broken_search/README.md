# Task 3: "Recursive Directory Search Script"

# Recursive Directory Search Challenge

Welcome to the "Recursive Directory Search" challenge as part of Day 6 of the #TWSBashBlazeChallenge! 🚀

In this challenge, participants are invited to delve into the world of Bash scripting and tackle the intricacies of creating a script that performs a recursive search for a specific file within a given directory and its subdirectories. The goal is to fix and improve the provided Bash script, `recursive_search.sh`, to achieve the desired behavior and functionality.

## Challenge Details

**Objective:** Your mission is to enhance the provided `recursive_search.sh` script and ensure it accurately performs a recursive search for a target file within a specified directory and its subdirectories. Here's what you need to achieve:

- The script should be invoked with two command-line arguments: the starting directory for the search and the target file name.
- The search should be truly recursive, encompassing the specified directory and all its subdirectories, no matter how deeply nested.
- Once the target file is found, the script should promptly display the absolute path of the file and then exit.
- Proper error handling should be implemented to gracefully address situations where the specified directory doesn't exist or the target file cannot be found.

**Provided Files:**

1. `recursive_search.sh`: The script that requires fixing and improvement.

## How I Resolved the Problem

1. **Argument Handling:** I ensured that the script accepts the correct number of arguments (two) - the starting directory and the target file name.

2. **Directory Validation:** I validated the provided starting directory to ensure it exists and is indeed a directory before proceeding.

3. **Absolute Path Conversion:** To avoid any ambiguity, I converted the starting directory to an absolute path using the `realpath` command.

4. **Recursive Search:** Leveraging the `find` command, I implemented a recursive search for the target file within the specified directory and its subdirectories.

5. **Target File Found:** When the target file is located, I displayed its absolute path and gracefully exited the script.

6. **Error Handling:** I incorporated robust error handling to address scenarios where the directory doesn't exist or the target file cannot be found.

   ![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/b1c84219-e870-4843-a038-b1dac43f3adc)


## What I Learned

Participating in this challenge allowed me to enhance my understanding of Bash scripting by working on real-world scenarios. I honed my skills in:

- Command-line argument handling
- File and directory validation
- Effective usage of the `find` command for recursive searches
- Implementing error handling to provide informative feedback
- Writing clear and concise script documentation

This challenge was an excellent opportunity to apply my scripting knowledge and creativity to create practical solutions. I'm excited about the growth in my problem-solving skills and my ability to craft efficient scripts.

Feel free to check out my improved script and the journey behind it in the repository. Happy scripting!

https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/blob/main/Challenges/Day_6/broken_search/recursive_search.sh

Happy scripting! 🛠️🌟


---

This challenge is part of the #TWSBashBlazeChallenge by Shubham Londhe. To learn more and join the challenge, visit https://github.com/prajwalpd7/BashBlaze-7-Days-of-Bash-Scripting-Challenge/tree/main.
