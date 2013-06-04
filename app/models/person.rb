class Person < ActiveRecord::Base
  attr_accessible :name, :email, :gender, :birth_date
end
