# Math_Eq

Ruby on Rails app which solves some equations.

# Quickstart

To install all the dependencies use `bundle install`. 
Next, use `rails db:migrate` to start migrations.
```bash
$ rails db:migrate
== 20190909152054 DeviseCreateUsers: migrating ================================
-- create_table(:users)
   -> 0.0011s
-- add_index(:users, :email, {:unique=>true})
   -> 0.0004s
-- add_index(:users, :reset_password_token, {:unique=>true})
   -> 0.0006s
== 20190909152054 DeviseCreateUsers: migrated (0.0024s) =======================
```
Finally, start the server:
```bash
rails server
=> Booting Puma
=> Rails 5.2.3 application starting in development 
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.12.1 (ruby 2.6.1-p33), codename: Llamas in Pajamas
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://localhost:3000
Use Ctrl-C to stop
```

# Project Goals

This project has been created for educational purposes.