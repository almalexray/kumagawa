class Course < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :topics, dependent: :destroy

  def self.search(params)
    where('name LIKE ?', "%#{params[:name]}%")
  end

  validates :name, presence: true
end
