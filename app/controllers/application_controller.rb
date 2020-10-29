class ApplicationController < ActionController::Base
  # Imports DeviseWhitelist methods from concern
  include DeviseWhitelist

  before_action :set_source

  def set_source
    session[:source] = params[:q] if params[:q]
  end
end