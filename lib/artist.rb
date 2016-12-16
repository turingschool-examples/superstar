class Artist
  attr_reader :albums,
              :name

  def initialize(name)
    @name   = name
    @albums = Hash.new
  end

  def add_album(album_name, year)
    @albums[album_name] = year
  end

end
