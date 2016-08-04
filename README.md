# Blog

# TODOs

* Set .env.local variables
* Set access_token in config/initializers/rollbar.rb
* Set default values for is_active, time_zone variable using in User and Admin model migrations db/migrate/*.rb
* Change username and password in config/settings.yml
* In public folder run this command ln -s ../VERSION.txt VERSION.txt

We are using sidekiq  with redis-server for background jobs.
Clone project run this commands in terminal
Before the run application look our env.sample file. It should be in project root directory with this name .env.local
```bash
bundle
redis-server
rake sidekiq:start
rake db:create
rake db:migrate
rake dev:seed
rails s
```


