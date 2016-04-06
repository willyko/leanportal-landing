class Visitor < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :school, presence: true
end
