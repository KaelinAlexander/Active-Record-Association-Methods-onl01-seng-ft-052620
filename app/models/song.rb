require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if artist.all.include?("Drake")
      self.artist.name = "Drake"
      binding.pry
      drake.songs.push(self)
    else
      self.artist.name = "Drake"
      drake = artist.create(name: "Drake")
      drake.songs.push(self)
    end
  end

end
