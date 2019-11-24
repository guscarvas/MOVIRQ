class User < ApplicationRecord
    has_many :reservas
    # , class_name: "object", foreign_key: "reference_id"
    has_secure_password
    validates :name, presence: true, length: {maximum: 50}
    validates :password, presence: true, length: {minimum: 6}
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
    enum role: [:LAAUSP, :atletica]
    after_initialize :set_default_role, :if => :new_record?
    def set_default_role
        self.role ||= :atletica
    end

    #FORGOT PASSOWORD
    def generate_password_token!
        self.reset_password_token = generate_token
        self.reset_password_sent_at = Time.now.utc
        save!
    end

    def password_token_valid?
        (self.reset_password_sent_at + 4.hours) > Time.now.utc
    end

    def reset_password!(password)
        self.reset_password_token = nil
        self.password = password
        save!
    end

    private

    def generate_token
        SecureRandom.hex(10)
    end
    
    #END FORGOT PASSOWRD
end
