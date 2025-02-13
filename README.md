# **2025-OBJPROG-LAB010**
Week 03-04 - Conditional and Looping Statements

Laboratory # 10 - Guided Coding Exercise 4: Looping Statements

## **Instructions**

### **Step 1.1: Accept the Assignment**

   1. Click on the assignment link provided by your instructor.
   2. GitHub Classroom will create a **private repository** under your GitHub account.
   3. After the repository is created, click **"Go to Repository"** to view your assignment.

---

### **Step 1.2: Setup your Git Environment**
Only perform this if this is the first time you will setup your Git Environment

   1. Create a GitHub Account:
   ```bash
   https://github.com/signup?source=login
   ```
      
   2. Download and Install Git on your Laptop/Desktop:
   ```bash
   https://git-scm.com/downloads
   ```
   
   3. Create a Folder in your Laptop/Desktop
   4. Right-click anywhere in the created folder and select "Open Git Bash Here".
   5. In the Git Bash Terminal, set your git name, perform command:
   ```bash
   git config --global user.name "Your Name"
   ```
   
   6. In the Git Bash Terminal, set your git email, perform command:
   ```bash
   git config --global user.email "your.email@example.com"
   ```
   
   7. Create your SSH Key, just follow the instructions, no need to provide filename and passphrase. In the Git Bash Terminal, perform command:
   ```bash
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```
   
   8. Copy your SSH Keys into clipboard. In the Git Bash Terminal, perform command:
   ```bash
   clip < ~/.ssh/id_rsa.pub
   ```
   
   9. Log in to your GitHub account.
   10. In the upper-right corner of GitHub, click your profile picture and select Settings.
   11. In the left sidebar, click on SSH and GPG keys.
   12. Click the New SSH key button.
   13. In the Title field, give the key a recognizable name (e.g., "My Windows Laptop").
   14. In the Key field, CTRL + V or paste the keys copied into your clipboard. Save the key.
   15. Go Back to terminal, use command:
   ```bash
   ssh -T git@github.com
   ```

### **Step 2: Clone the Repository to Your Local Machine**

   1. On your repository page, click the green **"Code"** button.
   2. Copy the repository URL (choose HTTPS for simplicity).
   3. Open your terminal (or Git Bash, Command Prompt, or PowerShell) and run:
   
   ```bash
   git clone <git_repo_url>
   ```
   
   4. Navigate into the cloned folder:
   
   ```bash
   cd <git_cloned_folder>
   ```

### **Step 3: Complete the Assignment**

**Laboratory # 10 - Guided Coding Exercise 4: Looping Statements**

   **Objective:**
   - Implement different types of loops to perform repetitive tasks.
   - Learn to control loop execution using break and continue statements.

   **File Naming Convention:**
   - `LoopingStatementsDemo.java`

   **Desired Output:**
   ```txt
   While Loop Output:
   Count: 1
   Count: 2
   Count: 3
   Count: 4
   Count: 5
   
   Do-While Loop Output:
   Count: 1
   Count: 2
   Count: 3
   Count: 4
   Count: 5
   
   For Loop Output (Even Numbers):
   Even: 2
   Even: 4
   Even: 6
   Even: 8
   Even: 10
   
   Nested Loops Output (3x3 Grid):
   * * * 
   * * * 
   * * * 
   
   Loop with Break and Continue:
   Number: 1
   Number: 2
   Number: 3
   Number: 4
   Number: 5
   Number: 6
   Number: 8
   ```

   **Notable Observations (to be discussed after completing the exercise):**
   - Observe the differences between while, do-while, and for loops.
   - Understand how nested loops create patterns.
   - See how break and continue alter loop flow.

   **Java Programming Best Practices:**
   - Use descriptive variable names (e.g., counter, row, col).
   - Comment your code to explain the logic.
   - Indent code blocks consistently for readability.
      
   **Step-by-Step Instructions:**

   1. Setup Class and Main Method
      - Create a file named `LoopingStatementsDemo.java`.
      - Define the class `LoopingStatementsDemo` and its `main` method.
      ```Java
      public class LoopingStatementsDemo {
          public static void main(String[] args) {
      
          }
      }
      ```
            
   2. While Loop (Numbers 1 to 5)
      - Declare an integer variable named counter and initialize it to 1.
      - Print "While Loop Output:".
      - Write a while loop. The condition should check if counter is less than or equal to 5.
      - Inside the loop:
         - Print "Count: " followed by the value of counter.
         - Increment counter by 1.
      ```Java
      int counter = 1;
      System.out.println("While Loop Output:");
      while (counter <= 5) {
          System.out.println("Count: " + counter);
          counter++;
      }
      ```

   3. Do-While Loop (Numbers 1 to 5)
      - Reset counter to 1.
      - Print "\nDo-While Loop Output:".  ("\n" adds a newline)
      - Write a do-while loop.
      - Inside the loop:
         - Print "Count: " followed by the value of counter.
         - Increment counter.
      - The while condition should check if counter is less than or equal to 5.
      ```Java
      counter = 1; // Reset counter
      System.out.println("\nDo-While Loop Output:");
      do {
          System.out.println("Count: " + counter);
          counter++;
      } while (counter <= 5);
      ```

   4. For Loop (Even Numbers 2 to 10)
      - Print "\nFor Loop Output (Even Numbers):".
      - Write a for loop.
      - Initialize a loop variable i to 2.
         - The loop condition should be i <= 10.
         - Increment i by 2 in each iteration (i += 2).
      - Inside the loop, print "Even: " followed by the value of i.
      ```Java
      System.out.println("\nFor Loop Output (Even Numbers):");
      for (int i = 2; i <= 10; i += 2) {
          System.out.println("Even: " + i);
      }
      ```

   5. Nested Loops (3x3 Grid)
      - Print "\nNested Loops Output (3x3 Grid):".
      - Write a for loop (outer loop) that iterates 3 times (for rows).
      - Inside the outer loop:
         - Write another for loop (inner loop) that also iterates 3 times (for columns).
         - Inside the inner loop, print "* " (an asterisk and a space).
         - After the inner loop (but still within the outer loop), print a newline.
      ```Java
      System.out.println("\nNested Loops Output (3x3 Grid):");
      for (int row = 1; row <= 3; row++) {
          for (int col = 1; col <= 3; col++) {
              System.out.print("* ");
          }
          System.out.println(); // Newline
      }
      ```

   6. Break and Continue
      - Print "\nLoop with Break and Continue:".
      - Write a for loop that iterates from 1 to 10.
      - Inside the loop:
         - If the loop variable (i) is 7, use continue to skip to the next iteration.
         - If i is greater than 8, use break to exit the loop.
         - If neither condition is met, print "Number: " followed by i.
      ```Java
      System.out.println("\nLoop with Break and Continue:");
      for (int i = 1; i <= 10; i++) {
          if (i == 7) {
              continue;
          }
          if (i > 8) {
              break;
          }
          System.out.println("Number: " + i);
      }
      ```
      
   7. Compile and Run
       - Save the file as `LoopingStatementsDemo.java`.
       - Compile the code using `javac LoopingStatementsDemo.java` in your terminal or command prompt.
       - Run the compiled code using `java LoopingStatementsDemo`.

   **Conclusion**
   This exercise explored various looping mechanisms and control flow statements in Java.  Loops are fundamental for repetitive tasks, and understanding different loop types and control mechanisms like break and continue is crucial for writing efficient and readable code.  The choice of which loop to use depends on the specific problem and desired outcome.  Always aim for clear, well-commented code that is easy to understand and maintain.

### **Step 4: Push Changes to GitHub**
Once you've completed your changes, follow these steps to upload your work to your GitHub repository.

1. Check the status of your changes:
   Open the terminal and run:
   
   ```bash
   git status
   ```
   This command shows any modified or new files.
   
2. Stage the changes:
   Add all modified files to staging:
   
   ```bash
   git add .
   ```
   
3. Commit your changes:
   Write a meaningful commit message:
   
   ```bash
   git commit -m "Submitting OBJPROG Week 04 - Session 01 - Exercise 04"
   ```
   
4. Push your changes to GitHub:
   Upload your changes to your remote repository:
   
   ```bash
   git push origin main
   ```
