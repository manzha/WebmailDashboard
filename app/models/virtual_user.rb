class VirtualUser < ApplicationRecord
  belongs_to :virtual_domain
  has_secure_password
  validates :password, presence: true, length: { minimum: 5 }
end
