Alohomora
=========

Alohomora (AL-o-ho-MOR-ah) is an authentication gem based on warden that provides for the ability to manage users within organizations.

Installing Alohomora
--------------------

At this time, alohomora has not been be released to a gem repository because it is early in development. To install the development
build of the gem, add the following to your Gemfile.

    gem 'alohomora', :git => 'git@github.com:entropillc/alohomora.git'

Once added to your Gemfile, install through bundler

    bundle install
  
Then run the installation scripts to install the migrations locally to your project

    rails g alohomora:install