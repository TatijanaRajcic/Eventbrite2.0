class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :sanitize_devise_params, if: :devise_controller?

  def sanitize_devise_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

#Cette méthode nous permet de rediriger un utilisateur après son sign_in sur sa page profil, plutôt que l'index (qui est en root)

  def after_sign_in_path_for(_resource_or_scope)
    user_path(current_user)
  end

end

