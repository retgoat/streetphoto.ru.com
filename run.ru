#!/bin/bash

export APP_LANG=en
#bundle exec shotgun -p 9393
bundle exec unicorn -c /home/drove/workspace/git/streetphoto.ru.com/unicorn.conf.rb