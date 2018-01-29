class SessionsController < ApplicationController
  skip_before_action :authorize
  TYPES=['user','admin']
  def new

  end

  def create1
    user=User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id]=user.id
      if user.user_type=="admin"
        redirect_to login_admin_url
      elsif user.user_type=="user"
        redirect_to quizzes_url
      end
    else
      if user.user_type=="user"
        redirect_to login_user_url, alert:"Invalid credentials"
      end
    end
  end
  def new2

  end
  def create2
    user=User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id]=user.id
      if user.user_type=="admin"
        redirect_to questions_url
      elsif user.user_type=="user"
        redirect_to login_user_url
      end
    else
      redirect_to login_admin_url, alert:"Invalid credentials"
    end
  end
  def destroy
    session[:user_id]=nil
    redirect_to login_user_url, alert:"Successfully logged out"

  end
end
