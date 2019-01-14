# Name of the script file: script1.sh

To run the script, just download it to any given directory and open terminal and run "sh script1.sh". In case of any error, please make sure the script has been made executable using "chmod +x script1.sh" command. 

I started my career as a Systems Engineer (after my undergraduate) and one part of our job as a fresher was to look out for problems with various Linux/RHEl servers. Autonomous monitoring system used to give us alerts regarding disk usage, memory usage and CPU usage of the servers. To login into every server and then check for all these statistics was a hectic job. It could have been easily automated.


This is a menu driven script for System Administrators. I have added 10 options in the menu (can be extended according to the needs). Among all the options, one can be chosen at a time and run on any of the Linux machines. The options in the menu are self explanatory so I will give a brief description of every command running in the background of respective menu options.


# Explanation of the menu

- First option in the menu shows the current user logged into the machine. It was simply achieved by the command "whoami". Second Option is for printing the current working directory which was achieved by "pwd" command. Further as an extension to second option, I also added an option of showing all the files in the current directory which was done using "ls" command. "-l" tag was used to list the files in a long listing format. Fourth option simply displays calander using "cal" command. Fifth option starts "vi" editor as a note taker.

- Sixth option enables user to obtain Public IP Address of the machine, this was achieved using the "curl" command. "ipecho.net" was used to get the public IP. This option can also be changed to get Local IP of the machine, which can be obtained by "ifconfig" command. Further using "grep inet" clause, we will get an output in a more readable format. But for the sake of this automation task, I went with usage of "curl" command.

- Seventh option is meant to display top 5 processes which are consuming a lot of CPU on the machine. I used "ps" command to get the list of processes, "-o" tag to get the required fields in output and sorted the processes in accordance of percentage of CPU used. Further "head" tag was used to strip the input to 6 lines (including header line).

- Eighth option displays free, used & swap memory in GBs. "free" command was used to obtain the memory information, "-g" tag was used to display data in GBs and "-T" tag was used to show the total memory in the end of the output. Ninth option displays top 10 files in terms of space taken. It was achieved using "df" command and "-T" shows type of file system for the files. "-h" shows the size of files in GBs rather than bytes. "head" clause was used to strip the output to top 10 files.

- Tenth options calls "exit 0" in the background and stops the script. "clear" command has been used at appropriate places so that the previous outputs are erased from the terminal before displaying the new ones. The menu based script was achieved with "while" and "case" statements.
