class Jukebox

  attr_accessor :full_library

  def initialize
    @full_library = 
            {
              "U2" => {
               :albums =>{
                    "The Joshua Tree" => {
                    :songs => ["With or Without You", "Still Haven't Found What I'm Looking For", "Bullet the Blue Sky"]},
                      "Zooropa" =>{:songs => ["Numb"]}
                     }
                    } 
                    ,

              "Talking Heads" => {
                :albums => {
                  "Fear of Music" => {
                    :songs => ["Life During Wartime", "Heaven"]
                  },
                  "Speaking in Tongues" => {
                    :songs => ["This Must Be the Place (Naive Melody)", "Burning Down the House"]}
                  }
                }
            #   ,

            #   "Huey Lewis and the News" => {
            #     :albums => {
            #       "Sports" => {
            #         :songs => ["I Want a New Drug", "If This is It", "Heart of Rock and Roll"]}
            #     }
            #   }
            }
            
          
    end


def list_library
  full_library.each do |artist, album_hash|
    list_artist(artist, album_hash)
  end
end

def list_artist(artist, album_hash)
   puts "\n---------------\n"
   puts "#{artist}:\n"
   puts "---------------"
   album_hash[:albums].each do |album_name, songs_hash|
     puts "#{album_name}:"
     print "\t" + songs_hash[:songs].join("\n\t") + "\n"
   end
   puts ""
end

def parse_command(command)
  parse_artist(command) || play_song(command) || not_found(command)
end

def parse_artist(command)
  cmd = command.to_sym
  parsed = false
  if @full_library.has_key?(cmd)
    puts list_artist(command, @full_library[cmd])
    parsed = true
  else
    @full_library.each do |artist, hash|
      if command.downcase == artist.to_s.gsub("_"," ").downcase
        puts list_artist(artist, hash)
        parsed = true
        break
      end
    end
  end
  parsed
end

# def play_song(command, lib)
#   lib.each do |artist, hash|
#     hash.each do |album_name, albums_hash|
#       albums_hash.each do |album, songs_hash|
#         songs_hash.each do |songs|
#           songs.each do |song|
#             if song.downcase == command.downcase
#             puts "Now Playing: #{artist[command].strip}: #{album} - #{song}\n\n"
#             return true
#           end
#         end
#       end
#     end
#   end
#   false
# end





end