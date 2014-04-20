class Testimony < ActiveRecord::Base
  translates :occupation, :content
  validates_presence_of :person, :content
end
