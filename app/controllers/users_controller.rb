# app/controllers/users_controller.rb
class UsersController < ApplicationController
  before_action :require_admin, only: [ :create ]

  private

  def require_admin
    unless current_user&.admin?
      redirect_to root_path, alert: "Only admins can create new users."
    end
  end
end
