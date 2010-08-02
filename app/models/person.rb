class Person < ActiveRecord::Base

  validates_presence_of :first_name, :last_name, :company, :email, :phone
  validates_length_of :phone, :minimum => 7
  
end
