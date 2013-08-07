class URL < ActiveRecord::Base
  validates :link, presence: :true
  validates :link, format: /^#{URI::regexp(%w(http https))}$/
  validates_uniqueness_of :hash_code #TODO - Can Rails tell before generating it?

  def converted_url
    #Rails.application.routes.url_helpers.root_url
    "http://localhost:3000/#{hash_code}"
  end

  def generate_short_code
    self.hash_code = SecureRandom.urlsafe_base64(8)
  end

end
