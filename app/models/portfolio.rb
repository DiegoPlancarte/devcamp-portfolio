class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Custom Scope : Option 1
  def self.angular
    where(subtitle: 'Angular')
  end

  # Custom Scope : Option 2
  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails')}
end
