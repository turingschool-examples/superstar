require "./test/test_helper"
require "./lib/artist"

class ArtistTest < Minitest::Test

  def test_an_artist_has_a_name
    artist = Artist.new("Taylor Swift")

    assert_equal "Taylor Swift", artist.name
  end

  def test_an_artist_can_have_a_different_name
    artist = Artist.new("Justin Bieber")

    assert_equal "Justin Bieber", artist.name
  end

  def test_an_artist_starts_with_no_albums
    artist = Artist.new("Jeff Casimir")

    assert artist.albums.empty?
  end

  def test_an_artist_can_have_an_album_added
    artist = Artist.new("Taylor Swift")

    artist.add_album("Speak Now", 2010)

    refute artist.albums.empty?
  end

  def test_artist_stores_added_album_name_and_year
    artist = Artist.new("Taylor Swift")

    artist.add_album("Speak Now", 2010)

    assert_equal 2010, artist.albums["Speak Now"]

  end

  def test_artist_stores_multiple_added_album_name_and_year
    artist = Artist.new("Taylor Swift")

    artist.add_album("Speak Now", 2010)
    artist.add_album("Red", 2012)
    artist.add_album("Fearless", 2008)

    assert_equal 2010, artist.albums["Speak Now"]
    assert_equal 2012, artist.albums["Red"]
    assert_equal 2008, artist.albums["Fearless"]
  end

end


