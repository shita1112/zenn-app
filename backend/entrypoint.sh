#!/bin/bash

# 1. nginx起動
sudo service nginx start

cd /app

# 2. bin/setup（migrate + db:create）
bin/setup

# 3. puma起動
bundle exec pumactl start
