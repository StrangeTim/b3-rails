class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: { case_sensitive: false}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:username]
  attr_accessor :username
  attr_accessor :login

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      # when allowing distinct User records with, e.g., "username" and "UserName"...
      where(conditions).where(["username == :value OR lower(email) == lower(:value)", { :value => login }]).first
    else
      where(conditions.to_hash).first
    end
  end
end
