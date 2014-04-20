class Workshop < ActiveRecord::Base
  translates :title, :description
  validates_presence_of :title, :description
end
