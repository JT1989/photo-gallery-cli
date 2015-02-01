#[v0.1] Output the filename as an absolute path

#absolute_path = File.absolute_path("______")
def absolute_path(file_name)  #takes file, "bunny-1.jpg"
  File.absolute_path(file_name) #gets the absolute path, starts at the root directory
end

def run_test
  p absolute_path("bunny-1.jpg") == "/Users/Tiao/photo-gallery-cli/bunny-1.jpg"
end

if ARGV.size == 0
    puts "Welcome! I can fetch the absolute path for you. What is the filename?"
    puts "For example, type: bunny-4.jpg"
    file_name = gets.chomp
    puts File.absolute_path(file_name)
  else
    file_name = ARGV[0]
    puts File.absolute_path(file_name)
end

#Sanity Checks

p absolute_path("bunny-1.jpg") == "/Users/Tiao/photo-gallery-cli/bunny-1.jpg"
p absolute_path("bunny-2.jpg") == "/Users/Tiao/photo-gallery-cli/bunny-2.jpg"
p absolute_path("bunny-3.jpg") == "/Users/Tiao/photo-gallery-cli/bunny-3.jpg"
p absolute_path("bunny-4.jpg") == "/Users/Tiao/photo-gallery-cli/bunny-4.jpg"
