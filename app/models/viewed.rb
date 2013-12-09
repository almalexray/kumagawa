class Viewed < ActiveRecord::Base
  validates :name, presence: true
end
