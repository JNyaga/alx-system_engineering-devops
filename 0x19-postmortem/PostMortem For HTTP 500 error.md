# PostMortem For HTTP 500 error

This Postmortem article is based on one of my ALX School tasks, where we have to fix a server which has a **500 internal error.**

The response code** 500 Hypertext Transfer Protocol (HTTP) Internal Server Error** indicates that the server has encountered an unexpected condition that prevents it from completing the request.

The error looks as follows

![No alt text provided for this image](https://media-exp1.licdn.com/dms/image/C4D12AQHGarl-FezCuQ/article-inline_image-shrink_1500_2232/0/1645487367417?e=1675900800&v=beta&t=5l88qn6sggC4fZZOcfPO9NE5R_Xw3tH6J2k00OZYj7A)

## Summary:

As seen in image above Apache server is returning 500 error for all get requests.

To debug the problem `strace` tool was used to trace the system calls and the signals ,of `apache server`, received during the execution of the `curl get request` and return the results of the command with the errors it found.

From the output a php file was determined as likely culprit:

That is the file \*`class-wp-locale.php` was mispelled as **class-wp-locale.phpp\***

## Timeline:

- 03-12-2022, 12:00:00 AM: Launch Project
- 03-12-2022, 12:04:00 AM: Run Curl to check website availability and noticed error 500.
- 03-12-2022, 12:14:00 AM: Run Strace against the apache2 process as curl was running and noticed**ENOENT** error. which is short for**Error NO ENTry (or Error NO ENTity)** , on file named`**class-wp-locale.phpp**` thus meaning the file could not be found
- 03-12-2022, 12:28:00 AM: Wrote a Puppet script to fix the error in mispelt**class-wp-locale.php file**
- 03-12-2022, 12:36:00 AM: Puppet script finished and able to be deployed across all servers. Script pushed to GitHub

## Impact:

Users unable to access website from at least midnight 9–11–2018 to 4:00 PM 9–12–2018. All servers affected by outage.

## Root Cause:

Root cause of problem was a typogrpahical error for file name at line 137 of the file /var/www/html/wp-settings.php. Line read: `require_once( ABSPATH . WPINC . ‘/class-wp-locale.phpp’ );`

Extension for file should have been ‘.php’

Error likely caused by human error in updated settings and subsequent lack of testing to ensure server was still functional.

## Solution:

Upon finding of error, a manual fix on one server was first completed to ensure the fix would work. A puppet file was then created to distribute across all servers.

## Prevention:

Error could have been easily prevented from user who updated config file to test that the server was still functional before exiting. In addition, debugging should not have been turned off for PHP files. The fix was quite obvious when error logging was turned back on. Testing procedures must be more strcitly enforced for production environments in future situations as well as more stringent monitoring and protection of who has access to write to config files.
