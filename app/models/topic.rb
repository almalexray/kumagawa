class Topic < ActiveRecord::Base
  belongs_to :course
  validates :name, :description, :hours, presence: true
end
