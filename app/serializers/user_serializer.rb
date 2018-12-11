class UserSerializer < ActiveModel::Serializer
  has_many :journals
  attributes :id, :first_name, :last_name, :username, :password_digest, :email, :phone
end
