# Install dependencies for asdf and ruby
sudo apt install curl git build-essential libz-dev libffi-dev libyaml-dev libssl-dev -y

# Install dependencies for chrome
sudo apt install ca-certificates fonts-liberation libasound2t64 libatk-bridge2.0-0 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgbm1 libgcc1 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 lsb-release wget xdg-utils -y

# Install and start redis
sudo apt update
sudo apt install redis-server -y
sudo sed -i 's/supervised auto/supervised systemd/g' /etc/redis/redis.conf
sudo systemctl unmask redis-server.service
sudo systemctl start redis-server.service

# Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
echo '. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo '. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
exec bash

# Install and configure ruby
asdf plugin-add ruby
asdf install ruby 3.3.1

# Install application dependencies
gem install bundler
bundle install
