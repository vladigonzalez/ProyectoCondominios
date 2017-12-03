class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # # se agrega esto por que al momento de querer editar se cae
  # before_action :configure_permitted_parameters, if: :devise_controller?
  # #before_action :filter_admin!
  #
  # protected
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre, :apellido_paterno, :apellido_Materno, :rut, :celular, :foto, :perfil])
  # end
end
