#!/bin/bash

export APP_LANG=ru
#bundle exec shotgun -p 9393
bundle exec unicorn -c /home/retgoat/workspace/git/streetphoto.ru.com/unicorn.conf.rb