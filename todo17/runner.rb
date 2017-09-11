require_relative './jukebox.rb'

def run
  puts "Welcome to Ruby Console Jukebox!"
  puts "Enter a command to continue. Type 'help' for a list of commands."
    command =   get_command
  while command != "exit" do
    run_command(command)
    command = get_command
  end
end

def get_command
  gets.strip.downcase
end

def run_command(command)
  case command
  when "help"
    show_help
  when "list"
    jukebox = Jukebox.new
    jukebox.list_library
  else
    jukebox = Jukebox.new
    jukebox.parse_command(command)
  end
end

def show_help
  puts "Never worked a jukebox, eh? Pretty standard. Available commands are:\n"
  puts "'help' - shows this menu\n"
  puts "'list' - lists the whole song library\n"
  puts "or you can enter an artist's name to show that artist's songs\n"
end

run
# jukebox = Jukebox.new
