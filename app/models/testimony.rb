class Testimony < ActiveRecord::Base
  # translates :person, :occupation, :content
  validates_presence_of :person, :content
end
