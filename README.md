Installation steps:

1 - Fix the database credentials in config/database.yml
2 - run bundle install
3 - run rails db:migrate to add the tables to the sqlite3 database
4 - run rails db:seed to start adding fake users,posts and reviews
5 - test via postman


Cases i see critical are attached in validation examples in postman

A post without a user provided.
A review without a user or a post provided.
