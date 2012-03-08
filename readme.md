#MySQL Versioning Backup

To install;

1. Clone this repo to your MySQL Server

    git clone <repo_url> <database_name>

2. `cd` into the directory and make the shell scripts executable

    chmod +x __*

3. Set up a cron job with the following command and run it nightly

    ./__mysqldbbackup.sh <database_name> <mysql_user> <mysql_password>

4. Set up a cron job with the following command and run it every other day

    git gc
