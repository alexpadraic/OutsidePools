# requirements: 1 non-word character, 1 upper case, 1 lower case
class PasswordValidator < ActiveModel::EachValidator
    def validate_each(record, _attribute, value)
        unless /\A(?=[^a-z]*[a-z])(?=(?:[^A-Z]*[A-Z]){1})(?=\D*\d)(.*\w)/ =~ value
            record.errors[:password] << 'Password must include
              an upper-case letter, a non-word character, and a digit'
        end
    end
end

class User < ActiveRecord::Base
    include BCrypt
    has_secure_password
    # Remember to create a migration!
    has_many :drives
    has_many :rides
    validates :email, uniqueness: true, on: :create
    validates :name, :email, presence: true
    # validates :password, presence: true, password: true

    # All of the BCrypt info methods you need - can be replaced by 'has_secure_password' if the user password field is 'password_digest'

    # def password
    #   @password ||= BCrypt::Password.new(password_hash)
    # end
    #
    # def password=(new_password)
    #   @password = BCrypt::Password.create(new_password)
    #   self.password_hash = @password
    # end

    def self.authenticate(email, password)
        @user = User.find_by(email: email)
        @user if @user && @user.password == password
    end
end
