class ApplicationController < ActionController::Base
  # Imports DeviseWhitelist methods from concern
  include DeviseWhitelist
  
  # Imports SetSource methods from concern
  include SetSource
end