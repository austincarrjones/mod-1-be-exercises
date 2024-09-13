class Curator

  attr_reader :photographs,
              :artists
  
  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photograph)
    @photographs << photograph
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.select do |artist|
      artist.id == id
    end
  end

  def artists_and_photographs
    hash = Hash.new { |k,v| k[v] = []}
    artists.each do |artist|
      photographs.each do |photo| #during each artist iteration, run this photographs iteration first.
        if photo.artist_id == artist.id
          hash[artist] << photo
        end
      end
    end
    hash
  end

  def artists_with_multiple_photos
    artists_and_photographs.filter_map do |artist, photos|
      artist.name if photos.count > 1
    end
  end

  def photos_by_country(country)
    photo_country = []
    artists_and_photographs.each do |artist, photos|
      if artist.country == country
        photo_country << photos
      end
    end
    #binding.pry
    photo_country.flatten
  end
end



# def artists_with_multiple_photos
#   array = []
#   hash = Hash.new(0)
#   photographs.each do |photo|
#     hash[photo.artist_id] += 1
#   end
#   hash.each do |id, amount|
#     if amount > 1
#       array << id
#     end
#   end
#   array
# end

# def artist_id_to_name
#   artists_with_multiple_photos.each do |id|
    
#   end
#   binding.pry
# end