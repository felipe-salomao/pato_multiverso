module ErrorsHandler
  module Handler
    def self.included(clazz)
      clazz.class_eval do
        rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
        rescue_from CustomException, with: :json_custom_error
      end
    end

    protected

    def render_unprocessable_entity_response(exception)
      render json: {
        errors: exception.record.errors.full_messages 
      }, status: :unprocessable_entity
    end

    def json_custom_error(exception)
      render json: {
        error: {
          message: exception.message
        }
      }, status: :unprocessable_entity
    end
  end
end
