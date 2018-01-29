class User < ApplicationRecord
  has_secure_password
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :email
  validates_uniqueness_of :email
  
end
user=User.new(name: "sravya",email: "pullesravya@gmail.com",password: "sravya",password_confirmation: "sravya",user_type: "admin");
user.save
user=User.new(name: "soumya",email: "soumya@gmail.com",password: "soumya",password_confirmation: "soumya",user_type: "admin");
user.save
user=User.new(name: "radha",email: "radha@gmail.com",password: "radha",password_confirmation: "radha",user_type: "admin");
user.save
