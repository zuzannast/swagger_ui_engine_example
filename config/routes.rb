Rails.application.routes.draw do
  mount SwaggerUiEngine::Engine, at: '/'
end
