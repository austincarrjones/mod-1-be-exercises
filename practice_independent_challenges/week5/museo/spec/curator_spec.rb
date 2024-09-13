require './lib/artist'
require './lib/photograph'
require './lib/curator'
require 'pry'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Curator do

  describe 'initialize' do
    it 'exists' do
      curator = Curator.new  
      expect(curator).to be_a Curator
      expect(curator.photographs).to eq []
      expect(curator.artists).to eq []
    end
  end

  describe '#add_photograph' do
    it 'can add photographs' do
      curator = Curator.new  
      photo_1 = Photograph.new({
        id: "1",      
        name: "Rue Mouffetard, Paris (Boy with Bottles)",      
        artist_id: "1",      
        year: "1954"      
        })        
      photo_2 = Photograph.new({
        id: "2",      
        name: "Moonrise, Hernandez",      
        artist_id: "2",      
        year: "1941"      
        })      
      curator.add_photograph(photo_1)
      curator.add_photograph(photo_2)
      
      expect(curator.photographs).to eq [photo_1, photo_2]
    end
  end

  describe '#add_artist' do
    it 'can add artists' do
      curator = Curator.new  
      artist_1 = Artist.new({
        id: "1",      
        name: "Henri Cartier-Bresson",      
        born: "1908",      
        died: "2004",      
        country: "France"      
      })
      artist_2 = Artist.new({
          id: "2",      
          name: "Ansel Adams",      
          born: "1902",      
          died: "1984",      
          country: "United States"      
      })        
      curator.add_artist(artist_1)
      curator.add_artist(artist_2)
      
      expect(curator.artists).to eq [artist_1, artist_2]
    end
  end

  describe '#find_artist_by_id' do
    it 'can find artists by id' do
      curator = Curator.new  
      artist_1 = Artist.new({
        id: "1",      
        name: "Henri Cartier-Bresson",      
        born: "1908",      
        died: "2004",      
        country: "France"      
      })
      artist_2 = Artist.new({
          id: "2",      
          name: "Ansel Adams",      
          born: "1902",      
          died: "1984",      
          country: "United States"      
      })        
      curator.add_artist(artist_1)
      curator.add_artist(artist_2)
      
      expect(curator.find_artist_by_id("1")).to eq [artist_1]
    end
  end

  describe '#artists_and_photographs' do
    it 'can return list of artists and their photos' do
      curator = Curator.new  
      artist_1 = Artist.new({
        id: "1",      
        name: "Henri Cartier-Bresson",      
        born: "1908",      
        died: "2004",      
        country: "France"      
      })
      artist_2 = Artist.new({
          id: "2",      
          name: "Ansel Adams",      
          born: "1902",      
          died: "1984",      
          country: "United States"      
      })        
      photo_1 = Photograph.new({
        id: "1",      
        name: "Rue Mouffetard, Paris (Boy with Bottles)",      
        artist_id: "1",      
        year: "1954"      
        })        
      photo_2 = Photograph.new({
        id: "2",      
        name: "Moonrise, Hernandez",      
        artist_id: "2",      
        year: "1941"      
        })      
      curator.add_artist(artist_1)
      curator.add_artist(artist_2)
      curator.add_photograph(photo_1)
      curator.add_photograph(photo_2)

      expect(curator.artists_and_photographs).to eq({artist_1 => [photo_1], artist_2 => [photo_2]})
      #return hash of keys = artist, values = photos (array)
      #will need to shovel photo objects in the array value of the hash
    end
  end

  describe '#artists_with_multiple_photos' do
    it 'can return a list of names of artists who have more than one photograph' do
      curator = Curator.new  
      artist_1 = Artist.new({
        id: "1",      
        name: "Henri Cartier-Bresson",      
        born: "1908",      
        died: "2004",      
        country: "France"      
      })
      artist_2 = Artist.new({
          id: "2",      
          name: "Ansel Adams",      
          born: "1902",      
          died: "1984",      
          country: "United States"      
      })     
      artist_3 = Artist.new({
        id: "3",      
        name: "Austin",      
        born: "1988",      
        died: "2088",      
        country: "United States"      
      })  
      photo_1 = Photograph.new({
        id: "1",      
        name: "Rue Mouffetard, Paris (Boy with Bottles)",      
        artist_id: "1",      
        year: "1954"      
        })        
      photo_2 = Photograph.new({
        id: "2",      
        name: "Moonrise, Hernandez",      
        artist_id: "2",      
        year: "1941"      
        })
      photo_3 = Photograph.new({
        id: "3",      
        name: "Boy with Apple",      
        artist_id: "1",      
        year: "1955"      
        })        
      photo_4 = Photograph.new({
        id: "4",      
        name: "Sunrise",      
        artist_id: "2",      
        year: "1943"      
        }) 
      photo_5 = Photograph.new({
        id: "5",      
        name: "surfin",     
        artist_id: "3",      
        year: "1947"      
        }) 
      curator.add_artist(artist_1)
      curator.add_artist(artist_2)
      curator.add_artist(artist_3)
      curator.add_photograph(photo_1)
      curator.add_photograph(photo_2)
      curator.add_photograph(photo_3)
      curator.add_photograph(photo_4)
      curator.add_photograph(photo_5)

      expect(curator.artists_with_multiple_photos).to eq(["Henri Cartier-Bresson", "Ansel Adams"])
    end
  end
    
  describe '#photos_by_country' do
    it 'can return a list of of photographs that were taken by a artist from that country' do
      curator = Curator.new  
      artist_1 = Artist.new({
        id: "1",      
        name: "Henri Cartier-Bresson",      
        born: "1908",      
        died: "2004",      
        country: "France"      
      })
      artist_2 = Artist.new({
          id: "2",      
          name: "Ansel Adams",      
          born: "1902",      
          died: "1984",      
          country: "United States"      
      })     
      artist_3 = Artist.new({
        id: "3",      
        name: "Austin",      
        born: "1988",      
        died: "2088",      
        country: "United States"      
      })  
      photo_1 = Photograph.new({
        id: "1",      
        name: "Rue Mouffetard, Paris (Boy with Bottles)",      
        artist_id: "1",      
        year: "1954"      
        })        
      photo_2 = Photograph.new({
        id: "2",      
        name: "Moonrise, Hernandez",      
        artist_id: "2",      
        year: "1941"      
        })
      photo_3 = Photograph.new({
        id: "3",      
        name: "Boy with Apple",      
        artist_id: "1",      
        year: "1955"      
        })        
      photo_4 = Photograph.new({
        id: "4",      
        name: "Sunrise",      
        artist_id: "2",      
        year: "1943"      
        }) 
      photo_5 = Photograph.new({
        id: "5",      
        name: "surfin",     
        artist_id: "3",      
        year: "1947"      
        }) 
      curator.add_artist(artist_1)
      curator.add_artist(artist_2)
      curator.add_artist(artist_3)
      curator.add_photograph(photo_1)
      curator.add_photograph(photo_2)
      curator.add_photograph(photo_3)
      curator.add_photograph(photo_4)
      curator.add_photograph(photo_5)

      expect(curator.photos_by_country("France")).to eq([photo_1, photo_3])
    end
  end

end