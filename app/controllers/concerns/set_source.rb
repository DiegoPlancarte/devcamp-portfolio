module SetSource
  extend ActiveSupport::Concern
  
  included do
    # Run before doing anything else
    before_action :set_source
  end

  # Method to assign value of parameter
  def set_source
    session[:source] = params[:q] if params[:q]
  end
end