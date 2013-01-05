class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  def adjust_format_for_iphone    
    request.format = :ios if request.env["HTTP_USER_AGENT"] =~ %r{Mobile/.+Safari}
  end
  
  
end
