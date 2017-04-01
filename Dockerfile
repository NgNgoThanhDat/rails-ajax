from ruby:latest
run apt-get update -y
run apt-get install -y build-essential patch ruby-dev zlib1g-dev liblzma-dev nodejs
run mkdir /webapp
workdir /webapp
add . /webapp
run bundle install
