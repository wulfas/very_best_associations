class Venue < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :favorites

  validates :name, :presence => true, :uniqueness => { :scope => :address }
end
