class Artist < ActiveRecord::Base
  validate :blank_artist_name
  has_many :songs
  
  private
  def blank_artist_name
    !self.name.blank?
  end
end
