class User < ActiveRecord::Base
  acts_as_authentic do |config|
    config.crypto_provider = Authlogic::CryptoProviders::BCrypt
    config.login_field = :email
    config.merge_validates_length_of_password_field_options({:minimum => 6, :maximum => 20})
  end
end
