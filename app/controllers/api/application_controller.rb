class Api::ApplicationController < ActionController::API
  include ErrorsHandler::Handler
  include ActionController::Serialization
end
