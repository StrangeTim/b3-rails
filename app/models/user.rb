class User < ActiveRecord::Base
  @authorized_users = ["jessbussert@yahoo.com", "sharonbussert@yahoo.com", "hbussert@gmail.com", "stevenbussert@gmail.com"]
  validates :username, presence: true, uniqueness: { case_sensitive: false}
  validate :validate_username
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable #, :authentication_keys => [:username]
  attr_accessor :login

  # def self.find_for_database_authentication(warden_conditions)
  #   conditions = warden_conditions.dup
  #   if login = conditions.delete(:login)
  #     # when allowing distinct User records with, e.g., "username" and "UserName"...
  #     where(conditions.to_hash).where(["lower(username) == :value OR lower(email) == :value", { :value => login.downcase }]).first
  #   else
  #     conditions[:email].downcase! if conditions[:email]
  #     where(conditions.to_hash).first
  #   end
  # end
  def self.authorized_users
    @authorized_users
  end

  def self.update_authorized_users(new_user)
    @authorized_users << new_user
    return true
  end


  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end

end
