#MySQL Versioning Backup

## Usage
    mysqlversioncontrol [<options>]

## Description
`mysqlversioncontrol` allows a MySQL database, or a specific table in a database to be version controlled as SQL files; One for the schema, and one for the data, for each table respectively. This allows tracking of changes since the last commit, and easy access to revisions.

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
    --schemaless        Do not dump the schemata for the table(s).
    --dataless          Do not dump the data for the table(s).

## Installation

Just run the `install` script to install `mysqlversioncontrol`. Once complete, the script can be called.

    mysqlversioncontrol -u name -p password -d somedatabase

By default, the output is to `/data/dumps`, using a temp folder at `/data/tmp`. If you need to change them, please use either `--path=yourdumpfolder` or `--tmp=yourtempfolder`.

## How is this useful

A CMS can have hooks put in place to run this script everytime a user makes a content change for example, so developers can track those changes to the minute when the dreaded call comes through that "We mistakenly changed some content and now we need to change it back".

Using a CMS that you can build your data model with? This script can keep a record of those changes so they can be applied to a remote copy of the database. If a remote copy is monitoring content changes using the `--schemaless` option, and a local copy is monitoring schema changes using the `--datales` option, the two can (currently only manually) be married up to apply content changes locally, and schema chenges remotely.
