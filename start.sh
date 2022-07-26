if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/KANNAN-ERO/kannan-filter-bot.git /kannanbot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /kannanbot
fi
cd /kannanbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
