class ApplicationController < ActionController::Base
  before_action do |controller|
    unless controller.send(:logged_in?)
      flash[:error] = "登陆超时"
      redirect_to :user => login
    end
  end
  # 判断启用pjax模版
  def pjax

  end
  # 判断用户登陆
  def  logged_in?
    if controller_name=="users" && (action_name=="login" || action_name=="dologin" || action_name=="dologout")
        true
    else
      if session[:user_id]==nil
        false
      else
        @current_user=session[:user]
        true
      end
    end
  end
end
