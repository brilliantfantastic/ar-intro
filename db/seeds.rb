require 'forgery'

Person.delete_all

GENDERS = ['male', 'female']

1500.times do
  Person.create(
    name: Forgery(:name).full_name,
    email: Forgery(:internet).email_address,
    gender: GENDERS.sample,
    birth_date: Time.at(rand * Time.now.to_i).to_date
  )
end
