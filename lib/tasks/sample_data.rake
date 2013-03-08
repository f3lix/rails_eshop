namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Super Man",
                 email: "sample@gmail.com",
                 password: "adminadmin",
                 password_confirmation: "adminadmin")
    admin.toggle!(:admin)
    99.times do |n|
      name = Faker::Name.name
      email = "sample-#{n+1}@gmail.com"
      password = "adminadmin"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end