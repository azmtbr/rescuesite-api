class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :set_rescue

  def set_rescue
    if request.remote_host == "127.0.0.1"
      return @rescue = Rescue.find(1)
    end

    render :unauthorized
  end
end
