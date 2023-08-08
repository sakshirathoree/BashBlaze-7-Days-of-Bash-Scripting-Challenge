# Task 2: "Restaurant Order Script" 

# The Hungry Bash - Restaurant Order System Challenge

Welcome to "The Hungry Bash" challenge! 🍔🍕🥗🥤

## Challenge Description

In this challenge, I successfully tackled the "Restaurant Order System" task, breathing life into a partially broken Bash script, `restaurant_order.sh`. This script, once fixed and completed, now provides a seamless dining experience for customers.

## The Broken Script

The `restaurant_order.sh` script had some missing components that I had to address:

1. **Missing Menu Display:** The script lacked the ability to read and display the menu from the `menu.txt` file. I implemented the `display_menu()` function to showcase the menu items and their prices, ensuring customers have a clear view of available options.

2. **Invalid User Input Handling:** The script wasn't equipped to handle invalid user input, such as non-existent item numbers or negative quantities. To enhance the user experience, I introduced the `handle_invalid_input()` function for graceful error handling.

3. **Total Bill Calculation:** The script struggled to calculate the correct total bill based on the customer's order. To overcome this, I devised the `calculate_total_bill()` function, meticulously computing the bill considering the order and menu prices.

## My Approach

1. **Display Menu:** Using the `awk` command, I skillfully extracted the menu information from `menu.txt` and formatted it to create an informative display for customers.

2. **Invalid Input Handling:** I crafted the `handle_invalid_input()` function to interact with users gracefully, prompting them for valid item numbers and quantities.

3. **Total Bill Calculation:** Leveraging the `calculate_total_bill()` function, I calculated the total bill by iteratively processing the order and menu prices, ensuring accuracy and consistency.

- Passing the valid parameters as arguments:
![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/2d26739a-efea-4967-8dd8-0b0ddc8924a3)


- Passing the invalid parameters as arguments:
![image](https://github.com/sakshirathoree/BashBlaze-7-Days-of-Bash-Scripting-Challenge/assets/67737704/dd2d054e-eff9-4dce-abfc-35fb2541938e)


   

## Learnings & Insights

This challenge was a fantastic opportunity for learning and growth. I deepened my understanding of error handling, data manipulation, and menu display in Bash scripting. Debugging and problem-solving took center stage, further refining my scripting skills.

## Reflection

The challenge underscored the importance of meticulous scripting and attention to detail. It reinforced my enthusiasm for problem-solving and script development. The satisfaction of crafting a functional solution from a broken script is truly gratifying.

Feel free to explore my journey and the improved script in this repository. Happy scripting and bon appétit! 🚀🍽️

## Acknowledgments

I extend my heartfelt gratitude to Kunal Gohrani, ASHOK SANA, Sunil Kumar, Gauri Yadav, Ali Sohail, Parag Pallav Singh, Amol Waingankar, Utkarsh Pathak, Er. Sandesh Pai, Prasad Suman, and Mohan Pooja Singh for their camaraderie and collaboration during this challenge.

#BashScripting #BashBlazeChallenge #TWSBashBlazeChallenge
