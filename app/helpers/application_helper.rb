module ApplicationHelper
	def get_session_count(name)
	  	session[@name] ? session[@name] : 0
	  end
end
