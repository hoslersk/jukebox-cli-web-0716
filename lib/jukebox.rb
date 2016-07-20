songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  commands =
  "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
  puts commands
  #puts "I accept the following commands:"
  #puts "- help : displays this help message"
  #puts "- list : displays a list of songs you can play"
  #puts "- play : lets you choose a song to play"
  #puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  playlist = ""
  request = gets.chomp
  songs.each_with_index do |track, index|
    if (request == track) || (request.to_i == index+1)
      playlist = playlist + track
    end
  end
  if playlist == ""
    puts "Invalid input, please try again."
  else
    puts "Playing #{playlist}"
  end
end

def list(songs)
  songs.each_with_index do |track, index|
    puts "#{index+1}. #{track}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  request = gets.chomp
  until request = "exit" do
    request = gets.chomp
    if request.downcase == "help"
      help
    elsif request.downcase == "list"
      list(songs)
    elsif request.downcase == "play"
      play(songs)
    elsif request.downcase == "exit"
      break
    end
  end
  exit_jukebox
end
