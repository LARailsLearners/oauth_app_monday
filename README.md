## one-feature Rails app : oauth_app_monday

as [Today](http://www.meetup.com/LA-Eastside-Ruby-Rails-Study-Group/events/225352273/)'s one-feature app, we implemented oauth github

used gems
+ https://rubygems.org/gems/omniauth-github
+ https://rubygems.org/gems/pry

```
# config/initializers/omniauth.rb
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
```
sign up and get your own
+ OAuth2 Application ID for `ENV['GITHUB_KEY']`
+ Secret for `ENV['GITHUB_SECRET']`

from the [GitHub Applications Page](https://github.com/settings/applications).
