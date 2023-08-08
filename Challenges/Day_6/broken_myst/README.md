# Task 1: "Mysterious Script" 

# Mysterious Script Challenge

Welcome to the Mysterious Script Challenge! Your task is to decipher the enigmatic Bash script and comprehend its functionality. Once you've unveiled its purpose, your objective is to enhance the script by adding comprehensive comments and explanations.

**Disclaimer:** This script is entirely fictional and poses no harm. It's designed to challenge your scripting skills and encourage creativity.

## The Mysterious Function

### ROT13 Cipher
The script employs the ROT13 cipher, a letter substitution cipher that replaces each letter with the letter 13 positions ahead of it in the alphabet. This transformation is case-insensitive. For instance, 'A' becomes 'N', 'B' becomes 'O', 'Z' becomes 'M', 'a' becomes 'n', and 'z' becomes 'm'.

### Script Flow
1. The mysterious_function takes two parameters: `input_file` and `output_file`.
2. It applies the ROT13 cipher to the characters in `input_file` and saves the result in `output_file`.
3. The content of `output_file` is reversed using the `rev` command and saved as `reversed_temp.txt`.
4. A random number between 1 and 2 (inclusive) is generated to determine the loop iterations.
5. The "Mystery loop" reverses the content of `reversed_temp.txt` and applies the ROT13 transformation one or two times based on the random number.

## Main Script Execution

1. The script checks if two arguments, `input_file` and `output_file`, are provided. If not, it displays the correct usage and exits.
2. It verifies if the `input_file` exists, and if not, displays an error and exits.
3. The `mysterious_function` is called with `input_file` and `output_file`.
4. The mysterious output is displayed, prompting you to check the result in the specified output file.

- The ROT13 cipher shifts each letter 13 positions forward in the alphabet. For example:

'h' becomes 'u'
'e' becomes 'r'
'l' becomes 'y'
'o' becomes 'b'
Applying this cipher to "hello" results in "uryyb." The same process can be reversed to get back to the original text.

![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/af993480-b380-459b-af8c-93c893816108)


## Insights and Optimizations

During exploration and analysis, an optimization opportunity was identified:

**Optimization:** The loop in the script has only two possible outcomes (odd or even) based on a random number. By modifying the random number generation to `random_number=$(( ( RANDOM % 2 ) + 1 ))`, the loop iterations are reduced to one or two, improving the script's performance without altering its functionality.

Feel free to explore, experiment, and enjoy the journey of unraveling this mysterious script!
https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/blob/main/Challenges/Day_6/broken_myst/mystery.sh

---

This challenge is part of the #TWSBashBlazeChallenge by Shubham Londhe.
 To learn more and join the challenge, visit https://github.com/prajwalpd7/BashBlaze-7-Days-of-Bash-Scripting-Challenge/tree/main.
