class ApplicationController < ActionController::API
    before_action :only_respond_to_json,:Check_auth
    def only_respond_to_json
        head :not_acceptable unless  request.headers['Content-Type']  == 'application/json'
    end

    def Check_auth
        head :not_acceptable unless  request.headers['X-CLIENTE']  == 'juan'
    end
end
