class User < ActiveRecord::Base
  validates_presence_of :name, :password, :password_confirmation, :on => :create
  has_secure_password
end
