class User < ApplicationRecord

    validates_presence_of :username
    validates_presence_of :session_token
    validates :password_digest, presence: {message: 'Password cant be blank'}
    validates :password, length: { minium: 6, allow_nill: true }
    before_validations :ensure_session_token

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def ensure_session_token
        self.session_token ||= generate_unique_session_token
    end

    def generate_unique_session_token
        loop do
            session_token = SecureRandom::urlsave_base(16)
            return session_token unless User.exists?(session_token: session_token)
        end
    end

    def is_password?(password)
        BCrypt::Password.new(password_digest).is_password?(password)
    end

    def self.find_by_credentials(username,password)
        user = User.find_by(username: username)
        user&.is_password?(password) ? user : nil

    end



    def reset_session_token!
        self.session_token = generate_unique_session_token
        self.save!
        self.session_token
    end

    



end
