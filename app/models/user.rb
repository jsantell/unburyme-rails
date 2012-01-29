class User
  include Mongoid::Document

  field :name,     :type => String
  field :email,    :type => String
  field :provider, :type => String
  field :uid,      :type => String

end
