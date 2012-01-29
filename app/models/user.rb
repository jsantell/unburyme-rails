class User
  include Mongoid::Document

  field :name,     :type => String
  field :email,    :type => String
  field :provider, :type => String
  field :uid,      :type => String

  def update_info(auth)
    self.name = auth["info"]["nickname"] #twitter
    self.email = '' #twitter
  end
end
