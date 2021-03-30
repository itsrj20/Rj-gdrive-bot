# Important - Read these points first:
- Original repo is https://github.com/lzzy12/python-aria-mirror-bot
- I have collected some cool features from various repositories and merged them in one.
- So, credits goes to original repo holder, not to me. I have just collected them.
- This (or any custom) repo is not supported in official bot support group.
- So if you have any issue then check first that issue is in official repo or not, You are only allowed to report that issue in bot support group if that issue is also present in official repo.
- Fork and Deploy !!
	- Don't Deploy to Heroku without forking my Repo ⚠️


## Credits:
- First of all, full credit goes to [Shivam Jha aka lzzy12](https://github.com/lzzy12) He build up this bot from scratch.
- Modified by [@itsrj20](https://github.com/itsrj20).
```
1. Added Inline Buttons
2. Added /del command to delete files from drive
3. /list module will post search result on telegra.ph
```
- Special thanks to [archie](https://github.com/archie9211) for very much useful feature **Unzipmirror**
- Features added from [archie](https://github.com/archie9211)'s repo
```
1. unzipmirror
2. Update tracker list dynamically
3. Fix SSL handsake error
```


# What is this repo about?
This is a telegram bot writen in python for mirroring files on the internet to our beloved Google Drive.
 for support : @itsrj20 @IndianRedmiK20pro


# Features supported:
- Mirroring direct download links to google drive
- Mirroring Mega.nz links to google drive (In development stage)
- Mirror Telegram files to google drive
- Mirror all youtube-dl supported links
- Extract zip, rar, tar and many supported file types and uploads to google drive
- Copy files from someone's drive to your drive (using Rclone)
- Service account support in cloning and uploading
- Download progress
- Upload progress
- Download/upload speeds and ETAs
- Docker support
- Uploading To Team Drives
- Index Link support

- Improvements in Dockerfile.
    - Before Deploy edit Dockerfile. To know what you have to edit ask in Telegram Group: [Linux Repositories](https://t.me/linux_repo)


## About Mega.nz links Mirroring:
As you know mega.nz links mirroring is on Development Stage. So there are a lot of bugs. Bot can crash and Restart it self automatically. Do mega.nz Mirroring at your own risk.


## Bot commands to be set in BotFather

```
mirror - start mirroring
tarmirror - upload tar (zipped) file
unzipmirror - extract files
clone - copy folder to drive
watch - mirror YT-DL support link
tarwatch - mirror youtube playlist link as tar
cancel - cancel a task
cancelall - cancel all tasks
del - delete file from drive
list - [query] searches files in G-Drive
status - get mirror status message
stats - bot usage stats
help - get detailed help
ping - ping bot
log - bot log [owner only]
restart - restart bot [owner only]
```

# How to deploy?

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

- Configs [Here](https://github.com/itsrj20/Rj-gdrive-bot/)#config
- For any help ask in [Telegram Group](https://t.me/IndianRedmiK20pro):
- <a href="https://t.me/linux_repo"><img src="https://img.shields.io/badge/Telegram-Join%20Telegram%20Group-blue.svg?logo=telegram"></a>

- You can also deploy on VPS !!


### Setting up config file:

`cp config_sample.env config.env`

- Remove the first line saying:
```
_____REMOVE_THIS_LINE_____=True
```
Fill up rest of the fields. Meaning of each fields are discussed below:

# Configs:
- **BOT_TOKEN** : The telegram bot token that you get from [@BotFather](https//t.me/BotFather)
- **GDRIVE_FOLDER_ID** : This is the folder ID of the Google Drive Folder to which you want to upload all the mirrors.
- **DOWNLOAD_DIR** : The path to the local folder where the downloads should be downloaded to. For Heroku put `/app/downloads`
- **DOWNLOAD_STATUS_UPDATE_INTERVAL** : A short interval of time in seconds after which the Mirror progress message is updated. (I recommend to keep it 5 seconds at least).
- **OWNER_ID** : The Telegram user ID (not username) of the owner of the bot.
- **AUTO_DELETE_MESSAGE_DURATION** : Interval of time (in seconds), after which the bot deletes it's message (and command message) which is expected to be viewed instantly. Note: Set to `-1` to never automatically delete messages.
- **IS_TEAM_DRIVE** : (Optional field) Set to `True` if **GDRIVE_FOLDER_ID** is from a Team Drive else False or Leave it empty.
- **USE_SERVICE_ACCOUNTS**: (Optional field) (Leave empty if unsure) Whether to use service accounts or not. For this to work see "Using service accounts" section below.
- **INDEX_URL** : (Optional field) Refer to https://github.com/maple3142/GDIndex/ The URL should not have any trailing '/'
- **API_KEY** : This is to authenticate to your telegram account for downloading Telegram files. You can get this from https://my.telegram.org DO NOT put this in quotes.
- **API_HASH** : This is to authenticate to your telegram account for downloading Telegram files. You can get this from https://my.telegram.org

- **TELEGRAPH_TOKEN** : Telegraph token generated by running:
        
`python3 generate_telegraph_token.py`
- Or Run in [Repl.it](https://repl.it/@linuxrepo/telegraph-token)
- Or use [@Telegra_phBot](http://t.me/Telegra_phBot)

- **USER_SESSION_STRING** : Session string generated by running:

`python3 generate_string_session.py`
- Or Run in [Repl.it](https://repl.it/@linuxrepo/string-session)
- Or use [@StringSessionGen_Bot](https://t.me/StringSessionGen_Bot)

- **MEGA_API_KEY**: Mega.nz API key to mirror mega.nz links. Get it from [Mega SDK Page](https://mega.nz/sdk).
- **MEGA_EMAIL_ID**: Your Email ID you used to sign up on mega.nz for using premium accounts (Leave th).
- **MEGA_PASSWORD**: Your password for your mega.nz account.
- **STOP_DUPLICATE_MIRROR**: (Optional field) (Leave empty if unsure) if this field is set to `True`, bo
