#[v0.1] Output the filename as an absolute path

#absolute_path = File.absolute_path("______")
def absolute_path(file_name)  #takes file, "bunny-1.jpg"
  File.absolute_path(file_name) #gets the absolute path, starts at the root directory
end

#Extra way to run a test
def run_test
  photo_file = "bunny-1.jpg"
  p absolute_path(photo_file) == "/Users/Tiao/photo-gallery-cli/bunny-1.jpg"
  p image_tag(photo_file) == "<img src=\"/Users/Tiao/photo-gallery-cli/bunny-1.jpg\">"
end

# if ARGV.size == 0
#     puts "Welcome! I can fetch the absolute path for you. What is the filename?"
#     puts "For example, type: bunny-4.jpg"
#     file_name = gets.chomp
#     puts File.absolute_path(file_name)
#   else
#     file_name = ARGV[0]
#     puts File.absolute_path(file_name)
# end

#[v0.2] Output a full image tag (<img>)
def image_tag(file_name)
  image_tag = "<img src=\"#{absolute_path(file_name)}\">"
  return image_tag
end

#Sanity Checks
file_name = ARGV[0]
puts image_tag (absolute_path(file_name))

run_test

# p image_tag("bunny-10.jpg") == "<img src=\"/Users/Tiao/photo-gallery-cli/bunny-10.jpg\">"
# p absolute_path("bunny-1.jpg") == "/Users/Tiao/photo-gallery-cli/bunny-1.jpg"
# p absolute_path("bunny-2.jpg") == "/Users/Tiao/photo-gallery-cli/bunny-2.jpg"
# p absolute_path("bunny-3.jpg") == "/Users/Tiao/photo-gallery-cli/bunny-3.jpg"
# p absolute_path("bunny-4.jpg") == "/Users/Tiao/photo-gallery-cli/bunny-4.jpg"
