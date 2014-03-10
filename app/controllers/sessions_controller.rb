class SessionsController < ApplicationController
	def index
		if has_user_login?
			@test = current_user_info['cardnum']
		else
			@test = "ublogi"
		end
	end

	def logout
		user_logout
	end
end
