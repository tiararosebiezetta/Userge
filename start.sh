if [[ -d .git ]]; then
	rm -rf .git
fi

git clone https://github.com/tiararosebiezetta/Userge tmp
mv tmp/.git .
rm -rf tmp
git reset --hard

if [[ -n $CONFIG_URL ]]; then
	wget -q $CONFIG_URL -O config.env
fi

python3 clever.py &
bash ./run
