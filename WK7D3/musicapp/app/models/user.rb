require 'bcrypt'

class User < ApplicationRecord
    attr_reader :password
    validates :email, uniqueness: true
    validates :password_digest, presence: true
    validates :session_token, uniqueness: true, presence: true
    after_initialize :ensure_session_token
    
    def self.find_by_credentials(email, password)
        user = User.find_by(email: email)
        return nil if user.nil?
        user.is_password?(password) ? user : nil
    end
    
    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end

    def reset_session_token!
        self.session_token = User.generate_session_token
        self.save!
        self.session_token
    end
   

    def password=(password)
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        bcryptobj = BCrypt::Password.new(self.password_digest)
        bcryptobj.is_password?(password)
    end

    private
     def ensure_session_token
        self.session_token ||= User.generate_session_token
    end

    has_many :bands, class_name: :Band, foreign_key: :user_id
end