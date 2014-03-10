module SessionsHelper
	def require_data
    # current_cookie = cookies[:HERALD_USER_SESSION_ID]
    params = {'cookie' => '14901fe4b094f8e09f8f842c242aa8b3'}
		reponse_data = Net::HTTP.post_form(URI.parse('http://herald.seu.edu.cn/useraccount/getloginuserinfo.php'),params)
  end

  def has_user_login?
  	response_data_json = JSON::parse(require_data.body)
  	if response_data_json['code'] == 200
  		return true
  	else
  		return false
  	end
  end

  def current_user_info
  	response_data_json = JSON::parse(require_data.body)
  	current_user_info = JSON::parse(response_data_json['data'])
  end

  def user_logout
  	params = {'cookie' => '14901fe4b094f8e09f8f842c242aa8b3'}
		reponse_data = Net::HTTP.post_form(URI.parse('http://herald.seu.edu.cn/useraccount/logout.php'),params)
  	response_data_json = JSON::parse(reponse_data.body)
  end
end
