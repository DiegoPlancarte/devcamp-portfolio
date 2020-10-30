class ApplicationController < ActionController::Base
  # Imports DeviseWhitelist methods from concern
  include DeviseWhitelist
  # Imports SetSource methods from concern
  include SetSource
  # Imports CurrentUserConcern methods from concern
  include CurrentUserConcern
  # Imports DefaultPageContent methods from concern
  include DefaultPageContent
end