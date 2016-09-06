# phpbb2_spambotkiller

## Description

Simple shell script to remove fake/SPAM user accounts from phpBB2 forums.
Script removes all users whose custom user field equals their username, as it's a sign that user was autocreated by bot.

## Configuration

Edit main shell script and set following variables:
* DBNAME - set to your database name
* DBUSER - set to your database username
* DBPASS - set to your database username password

## Usage

Configure as described above and simply launch the script:
`./phpbb2_spambotkiller.sh`
You can also set it to run via cron daemon, which would be preffered option.

