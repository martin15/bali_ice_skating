class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  BRAND_NAME = 'Bali Ice Skating'.freeze
  before_action :load_meta_description

  def meta_title(title = "")
    [title, BRAND_NAME].reject(&:empty?).join(' | ')
  end

  def paging(per_page)
    start_number = params[:page].nil? ? 0*per_page : (params[:page].to_i-1)*per_page
    return start_number
  end


  def the_domain
    host = request.host == "localhost" ? "#{request.host}:#{request.port}" : request.host
    return host
  end

  def current_user
    current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  private

    def load_meta_description
      @meta_description = "BISA - Bali Ice Skating - Winter Sport - Daily Promo"
    end

end
