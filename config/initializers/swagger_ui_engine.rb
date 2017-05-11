SwaggerUiEngine.configure do |config|
  config.swagger_url = {
    v1: '/doc/swagger.yaml',
    v2: '/doc/swagger.yaml'
  }

  config.doc_expansion = 'full'
  config.model_rendering = 'model'
  config.validator_enabled = true
end
