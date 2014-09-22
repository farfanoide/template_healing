class Workshop < ActiveRecord::Base
  translates :title, :description
  validates :description, presence: true
  validates :position, uniqueness: true
  # validates_presence_of :title, :description
end
