if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SHAN-SN/tGhero_Eva.git /tGhero_Eva
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /tGhero_Eva
fi
cd /tGhero_Eva
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
