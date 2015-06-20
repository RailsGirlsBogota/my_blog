# My Blog

This is the example blog application we created during the RailsGirls Bogotá
workshop on June 20/2015.

To get this application running in your computer follow these instructions:

Check you have Ruby and Rails installed.

Clone the repository:
```bash
$ git clone git@github.com:RailsGirlsBogota/my_blog.git
$ cd my_blog
```

Install the app dependencies:
```bash
$ bundle install
```

Create the database and run the migrations:
```bash
$ bundle exec rake db:create
$ bundle exec rake db:migrate
```

Run the application:
```bash
$ rails server
```

Then on the browser visit: `http://localhost:3000`
