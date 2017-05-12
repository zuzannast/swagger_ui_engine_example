# About

This is an example use of [SwaggerUiEngine](https://github.com/ZuzannaSt/swagger_ui_engine) gem inside a Rails project.

## Versions

SwaggerUIEngine | Ruby  | Rails versions   
----------------| ----- | -----------------
1.0.0           | 2.4.1 | 5.1.0

# Config  

[Gemfile](https://github.com/ZuzannaSt/swagger_ui_engine_example/blob/master/Gemfile#L4)
```ruby
gem 'swagger_ui_engine'
```

[Initializer](https://github.com/ZuzannaSt/swagger_ui_engine_example/blob/master/config/initializers/swagger_ui_engine.rb)
```ruby
# config/initializers/swagger_ui_engine.rb

SwaggerUiEngine.configure do |config|
  config.swagger_url = {
    v1: '/doc/v1/swagger.yaml',
    v2: '/doc/v2/swagger.yaml'
  }

  config.doc_expansion = 'full'
  config.model_rendering = 'model'
  config.validator_enabled = true
  config.admin_username = 'admin'
  config.admin_password = 'password'
end
```

[Routes](https://github.com/ZuzannaSt/swagger_ui_engine_example/blob/master/config/routes.rb)
```ruby
# config/routes.rb

Rails.application.routes.draw do
  mount SwaggerUiEngine::Engine, at: '/'
end
```

[Swagger Petstore minimal YAML documentation](https://github.com/ZuzannaSt/swagger_ui_engine_example/blob/master/public/doc/swagger.yaml)
```ruby
# public/doc/swagger.yaml

---
  swagger: "2.0"
  info:
    version: "1.0.0"
    title: "Swagger Petstore"
  ...
```

# Result

## Heroku app
[swagger-ui-engine-example](https://swagger-ui-engine-example.herokuapp.com)

## HTTP Basic Auth
![SwaggerUiEngine Basic Auth](https://github.com/ZuzannaSt/swagger_ui_engine_example/blob/master/app/assets/images/swagger_ui_engine_example_basic_auth.png)

The username and password for basic auth are: `admin` and `password` - as defined in the example configuration.

## Index page
![SwaggerUiEngine Index Page](https://github.com/ZuzannaSt/swagger_ui_engine_example/blob/master/app/assets/images/swagger_ui_engine_example_index.png)

## Single version page
![Swagger Web UI Single version](https://github.com/ZuzannaSt/swagger_ui_engine_example/blob/master/app/assets/images/swagger_ui_engine_example_version.png)
