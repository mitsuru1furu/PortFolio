class ApplicationController < ActionController::Base
	before_action :authenticate_admin!,except: :top
	before_action :authenticate_user!,except: :top
end
