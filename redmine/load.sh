#!/bin/sh

ln -s /Applications/MAMP/tmp/mysql/mysql.sock /tmp/mysql.sock
cd ~/workspace/study/redmine-3.3.0  && bundle exec ruby bin/rails server webrick -e production
