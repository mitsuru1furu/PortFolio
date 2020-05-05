class ApplicationController < ActionController::Base
	before_action :authenticate_admin!,except: :top
end
