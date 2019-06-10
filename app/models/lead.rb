class Lead < ActiveRecord::Base
  has_many :submissions

  has_secure_password

  def slug
    username.downcase.gsub(" ","-")
  end

  def self.find_by_slug(slug)
    Lead.all.find{|user| user.slug == slug}
  end 
end
