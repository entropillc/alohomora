class Account < ActiveRecord::Base
  #attr_accessible :email, :password, :password_confirmation, :emails_attributes, :organizations_attributes
  
  has_and_belongs_to_many :organizations
  has_many :emails
  
  validates_presence_of :password, on: :create
  validates_presence_of :emails
  
  accepts_nested_attributes_for :emails, :organizations
  
  has_secure_password
  
  before_create :generate_verification_code
  
  def generate_verification_code
    self.verification_code = Digest::SHA1.hexdigest([Time.now, rand].join)
  end
end
