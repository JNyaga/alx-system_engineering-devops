0x00-shell_basics returns a pwd
1-listit file lists dir content
ad cd ~ command to redirect user to the home directory 2-bring_me_home

3-listfiles for printing long forma list
4-listmorefiles for listing hidden files too
5-listfilesdigitonly
6-firstdirectory creates a directory named my_first_directory in the /tmp/ directory.
7-movethatfile
 Bye bye Betty
Delete the directory my_first_directory that is in the /tmp directory.
10 script that changes the working directory to the previous one.
11 a script that lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the working directory and the /boot directory (in this order), in long format.
12 prints type of file depending on content
13 a symbolic link to /bin/ls, named __ls__. The symbolic link should be created in the current working directory
14 a script that copies all the HTML files from the current working directory to the parent of the working directory, but only copy files that did not exist in the parent of the working directory or were newer than the versions in the parent of the working directory.
16 101-clean_emacs
 a command that lists all the files and directories of the current directory, separated by commas (,).

Directory names should end with a slash (/)
Files and directories starting with a dot (.) should be listed
The listing should be alpha ordered, except for the directories . and .. which should be listed at the very beginning
Only digits and letters are used to sort; Digits should come first
You can assume that all the files we will test with will have at least one letter or one digit
The listing should end with a new line
