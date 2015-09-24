class User < ActiveRecord::Base

  def self.find_or_create_from_auth_hash(auth_hash)
    token = auth_hash.credentials.token
    email = auth_hash.info.email

    find_or_create_by(email: email) do |user|
      user.token = token
    end

  end
end
