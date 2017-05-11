# About

This is an example use of [SwaggerUiEngine](https://github.com/ZuzannaSt/swagger_ui_engine) gem inside a Rails project.

## Versions

SwaggerUIEngine | Ruby  | Rails versions   
----------------| ----- | -----------------
0.0.5           | 2.4.1 | 5.0.2 (>= 4.2.6)

# Config  

[Gemfile](https://github.com/ZuzannaSt/swagger_ui_engine_example/blob/master/Gemfile#L4)
```ruby
gem 'swagger_ui_engine'
```

[Initializer](https://github.com/ZuzannaSt/swagger_ui_engine_example/blob/master/config/initializers/swagger_ui_engine.rb)
```ruby
# config/initializers/swagger_ui_engine.rb

SwaggerUiEngine.configure do |config|
  config.swagger_url = '/doc/swagger.yaml'
  config.doc_expansion = 'full'
  config.model_rendering = 'model'
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

## /swagger
![Swagger Web UI](https://github.com/ZuzannaSt/swagger_ui_engine_example/blob/master/app/assets/images/swagger_ui_engine_example.png)
