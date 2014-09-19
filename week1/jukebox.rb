require "csv"
class Jukebox
  def run
    database = [] 
    CSV.foreach("music.csv", {headers: true}) do |row|
     database << row["Name"]
    end
    puts database
  end
end

private

def populate_database_with(artist, track_name
  if ! @database[artist]
    @database{artist} = []
  end
end

@database[artist] << track_name
end

end


jukebox = Jukebox.new
jukebox.run

music_database = Jukebox.new
databse = music_database
