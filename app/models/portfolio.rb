class Portfolio < ApplicationRecord
  # Sets relationship with other model
  has_many :technologies

  # 
  accepts_nested_attributes_for :technologies, 
                                reject_if: lambda { |attr| attr['name'].blank? }

  # Imports placeholder.rb concern helper methods
  include Placeholder

  # Checks that values are present before saving instance to backend
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Custom Scope : Option 1
  def self.angular
    where(subtitle: 'Angular')
  end

  def self.by_position
    order("position ASC")
  end

  # Custom Scope : Option 2
  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails')}

  # Completes method after running 'new' method in controller file
  after_initialize :set_defaults

  # Setting default values: '||= value' used in order to not overwrite values and only replace nil values.
  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
