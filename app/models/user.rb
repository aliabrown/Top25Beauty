class User < ActiveRecord::Base
	has_secure_password
	has_many :list_items
	before_create { generate_token(:authentication_token) }





	def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
  
  def list!(params)
     list_items.create!(params)
  end

  
end
