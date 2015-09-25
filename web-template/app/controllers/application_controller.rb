class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  	def index

  	end

	def attempt_login
		authorized_user = User.authenticate(params[:username], params[:password]) 

		if authorized_user
		  session[:id] = authorized_user.getEmailAddress

		  session[:username] = authorized_user.getFirstName
		  session[:companyname] = authorized_user.getCompanyName
		  session[:companyid] = authorized_user.getCompanyId
		  #redirect_to(:controller => 'index', :action => 'index')
		  redirect_to(:controller => 'myaccount', :action => 'dashboard')
		else
		  flash[:notice] = "Sorry but your login details did not result in a sucessful login, please try again"
		  redirect_to(:controller => 'account', :action => 'login')
		end
	end

	def logout
	session[:id] = nil;
	session[:username] = nil;
	session[:isAdmin] = nil;
	flash[:notice] = "You have been sucessfully logged out."
	  redirect_to(:controller => 'index', :action => 'index')
	end

	protected
	def confirm_logged_in
	unless session[:id]
	  flash[:notice] = 'Please log in.'
	  redirect_to(:controller => 'index', :action => 'index')
	  return false
	else
	  return true
	end
	end
end
