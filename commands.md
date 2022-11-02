# commands

## rails

```bash
% ruby --version
ruby 3.0.0p0 (2020-12-25 revision 95aff21468) [x86_64-linux]

% rails --version
Rails 7.0.4
```


```bash
rails new octo1 --api 
```

### database

```bash
rails generate model Event payload:text
```

## gems

```ruby
gem 'rubocop', require: false

```

## ngrok

Add to the file: `config/environments/development.rb `

```ruby
  config.hosts << /[a-z0-9]+\.sa.ngrok\.io/
```
