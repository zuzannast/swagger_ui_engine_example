SwaggerUiEngine.configure do |config|
  config.swagger_url = {
    v1: '/doc/v1/swagger.yaml',
    v2: '/doc/v2/swagger.yaml'
  }

  config.doc_expansion = 'full'
  config.model_rendering = 'model'
  config.validator_enabled = true
end
