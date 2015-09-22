
as Today's one-feature app, we implemented oauth github

used gems

https://rubygems.org/gems/omniauth-github
https://rubygems.org/gems/pry

```
# config/initializers/omniauth.rb
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
```
sign up and get
+ OAuth2 Application ID for `ENV['GITHUB_KEY']`
+ Secret for `ENV['GITHUB_SECRET']`
on the [GitHub Applications Page](https://github.com/settings/applications).
