class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    self.artist.name = "Drake"
    if artists.include?("Drake")
      drake.songs.push(self)
    else
      drake = artist.create(name: "Drake")
      drake.songs.push(self)
    end
  end
end
