#!/bin/bash

1. ls command
-lists the content of a folder.
options:
-R: shows inside subfolders
-a: show hidden content

2. pwd command
-to check the current full path of your working directory
options:
-L: shows shortest path
-P: shows full original path

3. cd command
-to navigate between directories in your Linux VPS
no options
cd: returns to the current user's home direstory
cd ..: moves a directory up
cd -: moves back to the previous directory

4. mkdir command
-create one or multiple directories.
-to create a folder in another location, specify the full path.
-mkdir allows the user to read, write and execute files in the new folder.
-custom privilages can be set during creation using -m option.

5. rmdir command
-deletes empty directories in your Linux system.
-rmdir command wont work if the directory is not empty.
-to force the deletion, add -p option.

6. rm command
-deletes files from a directory.
-must have the write permission for the folder or use sudo.
--r option used to remove a folder and its contents.
--i flag to display a confirmation message before the removal.
--f flag to deactivate -r completely.

7. cp command
-copy files from your corrent directory to another folder.
-duplicate the contents of one file to another file.
options:
-R: duplicate a directory and its contents to another folder.

8. mv command
-move a file or a folder to another location.
-also used to rename files.
mv old_name.txt new_name.txt
mv old/location/of/old_name.txt new/path/for/new_name.txt

9. touch command
-create a new empty file in a specific directory.
touch [options] [path_and_file_name]
-if you omit the path, it creates file in the current directory.
touch file.txt

10. file command
-checks a file type such as PDF, TXT etc.
file [file_name]
options:
-k: print more detailed information about the item.

11. zip and unzip commands
-compresses on or multiple files into a ZIP archive, reducing their size.
-to extract a compressed file into your current working directory, use the unzip command.

12. nano, vi, and jed commands
-let you edit files.
-if the target file doesnot exist these commands creates new files.

13. cat command
-concatinate or cat command has many uses, basic one is printing the content of a file.
   cat file_name
-to print content in the reverse order, tac command is used.
-can be used with operator to combine the content of multiple files into one item.
   cat file1.txt file2.txt > target.txt

14. grep command
-Global Regular expression Print or grep lets you search specific files from a file using keywords.
-used for filtering large data like logs
   grep [options] keyword [file]
-can also filter data from another utility by piping it into the grep command.
   ls | grep "file.txt"

15. head command
-prints the first few entries of a file.
   head [options] file_name
-can print the first few lines of another command's output by piping it.
   command | head [options]
-by default, head will show the first ten lines.
options:
-n: set the number of lines to be printed.
-c: print the first few entries based on the byte size instead of the line.

16. tail command
-opposite of head command.
-print the last few lines of a file or another utility's output.
   tail [options] file_name
   command | tail [options]
-has same options as head.

17. awk command
-searches and manipulates regular expression patterns in a file.
  awk '/regex pattern/{action}'
input_file.txt
-operations performed are substitution, mathematical calculation, and deletion.

18. sort command
-rearrange a file's content in a specific order.
   sort [options] [file_name]
-by default, sort command uses the alphabetical order from A to Z.
options:
-r: used to reverse the order.
-n: sorts file numerically.

19. cut command
-selects specific sections from a file and prints them as a Treminal output.
   cut [options] file
-cut command's options are mandatory for file sectioning.
options:
-f: selects a specific row field.
-b: cuts the line by a specified byte size.
-c: sections the line using a specified character.
-d: separates lines based on delimiters
-multiple options can be combined for a more specific output.
   cut -d',' -f3-5 list.txt

20. diff command
-compares two files and prints their differences.
   diff file_name1 file_name2
-by default, diff command only shows the differences between two files.
-to print all the content and highlight the discrepencies, enable the context format using the -c option.
-can ignore the case sensitivity using -i option.
   diff -c 1.txt 2.txt

21. tee command
-outputs another command's results to both the Terminal and a file.
-useful when we want to use the data for further processing or backups.
   command | tee [options] file_name
-if the specified file doesnot exist, tee creates one.

22. sudo command
-superuser do or sudo command enables non-root users who are part of the sudo group to execute administrative commands.
   sudo [options] your_command
-enter the following to open a file using nano as an administrator
   sudo nano file.txt

23. su and whoami commands
-su command lets you switch to another user in the Terminal session.
   su [options] [username]
-whoami command is used to check the currently logged-in user from the linux command line shell.

24. chmod command
-lets you change the permissions of files or directories.
   chmod [options] [permission]
   [file_or_directory]
-in Linux, there are three folder and file permissions-
    read(r), write(w), and execute(x)
   chmod -rwx---r-- file1.txt

25. kill command
-terminate a process using its ID
    kill [signal_option] Process_ID
-command to obtain process ID:
    ps ux
-the kill command has 64 termination signals.
-by default, it uses the SIGTERM method that lets the program save its progress before closing.

26.shutdown command
-lets you turn off or restart your Linux system at a specific time
   shutdown [option] [time] [message]
-if command is run without any arguments, system will shutdown immediately.
-can specify the schedule using a 24-hour format ex, +5 to shut down the system after five minutes.
-to restart the machine add the -r option.
-message argument specifies the notification other users in your system will receive before the system shuts down.

27. ping command
-sends packets to a target server and fetches the responses.
-helpful for network diagnostics.
    ping [options]
    [hostname_or_IP_address]
-by default, ping sends infinite packets until the user manually stops it by pressing Ctrl+C.
-you can specify the custom number using the -c option.
-can change the interval between transfers by adding -i.
-for instance, let's send 15 packets every two seconds to Google's server.
   ping -c 15 -i 2 google.com

28. scp command
-lets you securely copy files and directories between systems over a network.
    scp file1.txt
    root@185.185.185:path/to/folder

29. history command
-check previously run utilities.
   history[options]
-to clear the terminal history use -r command.
-to rerun a specific utility from the list, enter an exclamation mark followed by its ID.
-to run the 145th command
    !145

30. cal command
-displays a calender in Linux command-line interface.
   cal [options] [month] [year]
-if no argument is added, the command will show the current date. 

