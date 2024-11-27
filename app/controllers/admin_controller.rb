class AdminController < ApplicationController
  before_action :authenticate_admin
  def admin
  end

  def new_staff
    @staff = Staff.new
  end

  def create_staff
    @staff = Staff.new(staff_params)
    if @staff.save
      redirect_to admin_path, notice: "Staff member created successfully."
    else
      render :new
    end
  end

  private

  def staff_params
    params.require(:staff).permit(:email, :password, :password_confirmation)
  end

  def authenticate_admin
    unless current_user&.admin?
      redirect_to root_path, alert: "Only admins can access this page."
    end
  end
end
