class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!
	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])

	end
	Refile.secret_key = '3ce152b51b75a2191b5b654e789f3fe8ecd679d5fc3706780a2c8302ed3adca9a9d3cdba3c9381ff88b529316de8d8df83cea8da8b8b4609a7a258fd5efb3742'
end
