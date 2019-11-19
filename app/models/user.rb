class User < ApplicationRecord
    has_secure_password
    validates name, presence: true, length: {maximum: 50}
    validates password, presence: true, length: {minimum: 6}
    VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
    enum role: [:LAAUSP, :atletica]
    after_initialize :set_default_role, :if => :new_record?
    def set_default_role
        self.role ||= :atletica
    end

    before_save { self.email = email.downcase }
end
