class SessionsController < ApplicationController
  def create
    # raise auth_hash.to_yaml
    @user = User.find_or_create_from_auth_hash(auth_hash)
    session[:current_user_id] = @user.id
    self.current_user = @user
    redirect_to '/'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
