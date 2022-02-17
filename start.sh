git clone https://github.com/tiararosebiezetta/Userge
cd Userge

if [[ -n $CONFIG_URL ]]; then
	wget -q $CONFIG_URL -O config.env
fi

python3 clever.py &
bash ./run
