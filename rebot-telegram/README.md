# ReBot Telegram bot

The ReBot Bot implementation.

### Bot Functions:

    - karma - Karma operations username++|--
    - Chuck Norris - When Chuck norris is typed, a fun fact about him will be returnad
    - /karma - Get the karma points for the given key, example: /karma rebot
    - /ping - pong
    - /help - Help menu
    - /faq - List the information about the given project, example /faq wildfly
    - /uptime - Returns the time the bot is running
    - /urban - Searchs for a English term on urban dictionary, exemplo /ub -c 2 -e lol ou /ub lol
    - /weather - Returns the forecast for the given city.
    - /packt - returns the daily free ebook, and, also can notify a user or a group every day with the free ebook
    - /enable - enable the bot
    - /disable - disable the bot
    - /dump - dump the available commands in the Telegram commands pattern
    - /ddd - Search for the national code (ddd) for the given county or the national code (Available only for brazil DDD code)
    - <command> help: returns the command's help.
    
### Starting the Bot

Execute the following command:

```sh
java -jar -Xms150m -Xmx300m -XX:MetaspaceSize=100m \
    -Dit.rebase.rebot.telegram.token=<TELEGRAM_TOKEN> 
    -Dit.rebase.rebot.telegram.userId=<BOT_USER_ID> \
    -Dit.rebase.rebot.telegram.chatId=<CHAT_ID> \
    -Dit.rebase.rebot.plugin.yahoo.app.id=<YAHOO_APP_ID> \
    -Dit.rebase.rebot.plugin.yahoo.app.consumerKey=<YAHOO_APP_CONSUMER_KEY> \
    -Dit.rebase.rebot.plugin.yahoo.app.consumerSecret=<YAHOO_APP_CONSUMER_SECRET> \
    rebot-telegram-bot-<VERSION>-swarm.jar
 ```
 
For mor information about how to create an Yahoo app, please refer to this [link](https://developer.yahoo.com/weather/).
Those parameters are required for the weather plugin work.
 
Or, you can deploy it on a JavaEE container, like WildFly, for this use the `rebot-telegram-bot-<VERSION>.jar` artifact.
    
    
PS: The bot token is private, you can retrieve yours through the Telegram's BotFather


### Would you like to try it?
The bot is up and running, feel free to add it in a group or to test it on a private chat.
The bot username is: **@rebaseit_bot**


### Did you find a bug or do you have a suggestion?
Feel free to raise a [issue](https://github.com/rebase-it/rebot/issues/new) or send a email: just@rebase.it