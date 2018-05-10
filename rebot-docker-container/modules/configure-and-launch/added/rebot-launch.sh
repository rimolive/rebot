#!/bin/sh

REBOT_TELEGRAM_LOG_LEVEL=${REBOT_TELEGRAM_LOG_LEVEL:-INFO}

if [ -n "${REBOT_TELEGRAM_TOKEN_ID}" -a -n "${REBOT_TELEGRAM_USER_ID}" -a -n "${REBOT_TELEGRAM_CHAT_ID}" ]; then
    echo "Bot correctly configured."
else
    echo "Missing configurations, needed vars: REBOT_TELEGRAM_TOKEN_ID, REBOT_TELEGRAM_USER_ID and REBOT_TELEGRAM_CHAT_ID"
    exit 1
fi

echo "Running ReBot image with the following configurations:"
echo "REBOT_TELEGRAM_TOKEN_ID: $REBOT_TELEGRAM_TOKEN_ID"
echo "REBOT_TELEGRAM_USER_ID: $REBOT_TELEGRAM_USER_ID"
echo "REBOT_TELEGRAM_CHAT_ID: $REBOT_TELEGRAM_CHAT_ID"
echo "REBOT_TELEGRAM_LOG_LEVEL: $REBOT_TELEGRAM_LOG_LEVEL"


cd $REBOT_HOME && exec java -jar -Xms150m -Xmx300m -XX:MetaspaceSize=100m \
    -Dit.rebase.rebot.telegram.token=${REBOT_TELEGRAM_TOKEN_ID} \
    -Dit.rebase.rebot.telegram.userId=${REBOT_TELEGRAM_USER_ID} \
    -Dit.rebase.rebot.telegram.chatId=${REBOT_TELEGRAM_CHAT_ID} \
    -Dswarm.logging.it.rebase=${REBOT_TELEGRAM_LOG_LEVEL} \
    -Dswarm.bind.address=0.0.0.0 \
    ${REBOT_SWARM_BINARY}