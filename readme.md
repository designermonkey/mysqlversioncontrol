#MySQL Versioning Backup

## Usage
    mysqlversioncontrol [<options>]

## Description
`mysqlversioncontrol` allows a MySQL database, or a specific table in a database to be version controlled as a SQL file. This allows tracking of changes since the last commit, and easy access to revisions.

## Options
    -h, --help          Show this help screen.
    -v, --version       Show the current version number.
    -u, --user          Set the MySQL user name.
    -p, --password      Set the MySQL password.
    -d, --database      Set the database (Required).
    -t, --table         Set an optional table to limit the process to.
    -b, --branch        A branch to commit the dump to, and to match in the repository. (Defaults to master)
    -r, --repo          A repository to push the committed dump to. (Defaults to origin)
    --path              Path to dump the database to, will be prepended with the database name
    --tmp               Path to the temp folder to use for dumps.

## Installation

Just run the `install` script to install `mysqlversioncontrol`. Once complete, the script can be called.

    mysqlversioncontrol -u name -p password -d somedatabase

By default, the output is to `/data/dumps`, using a temp folder at `/data/tmp`. If you need to change them, please use either `--path=yourdumpfolder` or `--tmp=yourtempfolder`.
