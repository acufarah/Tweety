class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to main_app.root_url, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end
  def after_sign_in_path_for(resource)
    # return the path based on resource
    root_path
  end

  def after_sign_out_path_for(resource)
    # return the path based on resource
    new_user_session_path
  end
end
