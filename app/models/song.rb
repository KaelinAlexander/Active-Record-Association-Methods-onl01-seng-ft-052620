require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def self.drake_made_this
    if Artist.find_or_create_by(name: "Drake")
      drake.songs.push(self)
  end

end
