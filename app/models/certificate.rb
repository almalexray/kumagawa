class Certificate < ActiveRecord::Base
  validates :name, presence: true
end
