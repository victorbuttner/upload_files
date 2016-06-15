class ApplicationController < ActionController::Base
  	

  
  before_action :authenticate_user!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters 
  devise_parameter_sanitizer.for(:sign_up) << :name
  devise_parameter_sanitizer.for(:sign_up) << :cpf
  devise_parameter_sanitizer.for(:sign_up) << :telefone

  devise_parameter_sanitizer.for(:account_update) << :name
  devise_parameter_sanitizer.for(:account_update) << :cpf
  devise_parameter_sanitizer.for(:account_update) << :telefone
  devise_parameter_sanitizer.for(:account_update) << :admin
  end

  #layout :layout

  #private

  #def layout
    # only turn it off for login pages:
   # is_a?(Devise::SessionsController) ? false : "application"
    # or turn layout off for every devise controller:
    #devise_controller? && "application"
  #end
  
end
