class User < ActiveRecord::Base
  acts_as_authentic do |config|
    config.crypto_provider = Authlogic::CryptoProviders::BCrypt
    config.login_field = :email
    config.merge_validates_length_of_password_field_options({:minimum => 6, :maximum => 20})
  end

  def valid_website?(url = website)
    url = URI.parse(url) rescue false
    url.kind_of?(URI::HTTP) || url.kind_of?(URI::HTTPS)
  end

end
