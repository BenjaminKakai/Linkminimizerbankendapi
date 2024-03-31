class ShortUrl < ApplicationRecord
    validates :original_url, presence: true, uniqueness: true
    before_create :generate_short_code
  
    def generate_short_code
      self.short_code = SecureRandom.uuid[0..5] # Simple example, customize as needed
    end
  end
  