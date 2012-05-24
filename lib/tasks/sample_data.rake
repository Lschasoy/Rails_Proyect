namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_users
    make_microposts
    make_relationships
  end
end

def make_users
  admin = User.create!(:name => "ADMIN",
                       :email => "micropost.ull@gmail.com",
                       :color => "red",
                       :password => "admin1234",
                       :password_confirmation => "admin1234")
  admin.toggle!(:admin)
  8.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password  = "password"
    User.create!(:name => name,
                 :email => email,
                 :password => password,
                 :password_confirmation => password)
  end
end

def make_microposts
  User.all(:limit => 5).each do |user|
    2.times do
      content = Faker::Lorem.sentence(5)
      user.microposts.create!(:content => content)
    end
  end
end

def make_relationships
  users = User.all
  user  = users.first
  following = users[1..5]
  followers = users[3..4]
  following.each { |followed| user.follow!(followed) }
  followers.each { |follower| follower.follow!(user) }
end