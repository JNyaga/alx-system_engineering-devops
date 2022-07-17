 ## 0x00-shell_basics
 `returns a pwd`
## 1. listit file lists dir content
``ls``
## 2-bring_me_home command to redirect user to the home directory
``cd ~  ``

## 3-listfiles for printing long forma list
`ls -l`
## 4-listmorefiles for listing hidden files too
`ls -a`

## 5-list files digitonly  
 -  like -l, but list numeric user and group IDs
      `ls -lna`


## 6-firstdirectory creates a directory named my_first_directory in the /tmp/ directory.
    `mkdir /tmp/my_first_directory`


## 7-movethatfile
   `mv /tmp/betty /tmp/my_first_directory`


## 8-Bye bye Betty
   `rm /tmp/my_first_directory/betty`


## 9 Delete the directory my_first_directory that is in the /tmp directory.
         `rm -r /tmp/my_first_directory`

## 10 script that changes the working directory to the previous one.
   `cd -`

## 11-a script that lists all files
 - (even ones with names beginning with a period character, which are normally hidden)
 - in the current directory and the parent of the working directory and the /boot directory (in this order),
 - in long format.
       `ls -la . .. /boot`


 ## 12- prints type of file depending on content
   `file /tmp/iamafile`
## 13 a symbolic link to /bin/ls, named __ls__.
 - The symbolic link should be created in the current working directory
    `ln -s /bin/ls __ls__`

## 14 a script that copies all the HTML files from the current working directory to the parent of the working directory,
- but only copy files that did not exist in the parent of the working directory
- or were newer than the versions in the parent of the working directory.
   `cp -u *.html ..`

## 101-clean_emacs
    `rm *~`
## 102-treee
  - create directory and subdir with one command
  `mkdir -p welcome/to/school`

## 103-commas- a command that lists all the files and directories of the current directory, separated by commas (,).
  - Directory names should end with a slash (/)
  - Files and directories starting with a dot (.) should be listed
  - The listing should be alpha ordered, except for the directories . and .. which should be listed at the very beginning
  - Only digits and letters are used to sort; Digits should come first
  - You can assume that all the files we will test with will have at least one letter or one digit
  - The listing should end with a new line
      `ls -apm`


## Create a magic file school.mgc that can be used with the command file to detect School data files. School data files always contain the string SCHOOL at offset 0.
      - create a file named school with the following:
        ```
        0      string  SCHOOL  School data
        !:mime School
        ```
      - then compile it:
      ```
      file -C -m school
     ```
      - produces a school.mgc
