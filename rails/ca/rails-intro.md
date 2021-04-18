# Rails Intro

Rails was created in 2003 by **David Heinemeier Hansson** to create **BaseCamp**
Released the codebase as  anopen source fram,ework in July 2004.
Rails sticks to three principles:

1. Ruby programmiung language
2. Model View Controller Architecture
3. Programmer Happiness

Rails is designed as a framework to help quickly build an MVP

## Apps built in rails

- Airbnb
- Spotify
- Twitter

To see a list of tools used to build any particular application, [look them up on stackshare](stackshare.io)

## Creating a rails app

1. Navigate to the paretn directory
1. run the command `rails new appName -d postgresql`
1. This will create the file structure for the application

### The directory structure

```text
\app
  \models\
  \views\
  \controllers\
\bin
  \scripts
\config
\db
\public
  \static files and images to be visible externally
```

| File/Folder |	Purpose |
| ----------- |:------- |
| app/ | Contains the controllers, models, views, helpers, mailers, channels, jobs, and assets for your application. You'll focus on this folder for the remainder of this guide. |
| bin/ | Contains the rails script that starts your app and can contain other scripts you use to set up, update, deploy, or run your application. |
| config/ | Contains configuration for your application's routes, database, and more. This is covered in more detail in Configuring Rails Applications. |
| config.ru | Rack configuration for Rack-based servers used to start the application. For more information about Rack, see the Rack website. |
| db/ | Contains your current database schema, as well as the database migrations. |
| Gemfile, Gemfile.lock | | These files allow you to specify what gem dependencies are needed for your Rails application. These files are used by the Bundler gem. For more information about Bundler, see the Bundler website. |
| lib/ | Extended modules for your application. |
| log/ | Application log files. |
| package.json | This file allows you to specify what npm dependencies are needed for your Rails application. This file is used by Yarn. For more information about Yarn, see the Yarn website. |
| public/ | Contains static files and compiled assets. When your app is running, this directory will be exposed as-is. |
| Rakefile | This file locates and loads tasks that can be run from the command line. The task definitions are defined throughout the components of Rails. Rather than changing Rakefile, you should add your own tasks by adding files to the lib/tasks directory of your application. |
| README.md | This is a brief instruction manual for your application. You should edit this file to tell others what your application does, how to set it up, and so on. |
| storage/ | Active Storage files for Disk Service. This is covered in Active Storage Overview. |
| test/ | Unit tests, fixtures, and other test apparatus. These are covered in Testing Rails Applications. |
| tmp/ | Temporary files (like cache and pid files). |
| vendor/ | A place for all third-party code. In a typical Rails application this includes vendored gems. |
| .gitignore | This file tells git which files (or patterns) it should ignore. See GitHub - Ignoring files for more info about ignoring files. |
| .ruby-version | This file contains the default Ruby version. |


### Running the application

1. Run the command `rails s` from within the application folder
1. A `puma` server will be launched and output to the server, by default this will be on port `3000`
    1. To use a custom port use `rails s -p portnum`


## Guides

[Ruby on rails getting started guide](https://guides.rubyonrails.org/getting_started.html)