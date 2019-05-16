# README
I have create a basic rails app with ```Rails.new``` command, main code lies in the [issues_controller](https://github.com/acharya1729/call_git/blob/master/app/controllers/issues_controller.rb), and the class methods are in [git_issue.rb](https://github.com/acharya1729/call_git/blob/master/app/services/git_issue.rb).

### Installation
Use these commands to setup environment for `call_git`.
```ruby
rvm install 2.5.0
bundle install
```

Start the Rails app to see the In-Context-Editor added to the To-Do application. You're ready to localize your app:
```ruby
bundle exec rails server
```
You can find your app now by pointing your browser to [http://localhost:3000](http://localhost:3000)

### Usage
Suppose we have github account of `microsoft` and repo `terminal`, 
You can go the [http://localhost:3000/issues/index?user=microsoft&repo=terminal](http://localhost:3000/issues/index?user=microsoft&repo=terminal) to see the open issues, we can pass user and repo in the params.

You can find following info in the response 
- Total number of open issues
- Number of open issues that were opened in the last 24 hours
- Number of open issues that were opened more than 24 hours ago but less than 7 days ago
- Number of open issues that were opened more than 7 days ago 

### [Heroku link](https://mysterious-beach-68758.herokuapp.com/issues/index?user=microsoft&repo=terminal)

