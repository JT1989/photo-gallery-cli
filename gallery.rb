#[v0.1] Output the filename as an absolute path
def absolute_path(file)  #takes file, "bunny-1.jpg"
  File.absolute_path(file) #gets the absolute path, starts at the root directory
end

# if ARGV.size == 0
#     puts "Welcome! I can fetch the absolute path for you. What is the filename?"
#     puts "For example, type: bunny-4.jpg"
#     file_name = gets.chomp
#     puts absolute_path(file_name)
#   else
#     file_name = ARGV[0]
#     puts absolute_path(file_name)
# end

#[v0.2] Output a full image tag (<img>)
def image_tag(file_name)
  return "<img src=\"#{file_name}\">"
end

# #[v0.3] Generate a full, valid HTML page
# def generate_HTML_page(image_tag)
# full_html = <<-HTML
# <!DOCTYPE html>
# <html>
# <head>
# <title>My Gallery</title>
# </head>
# <body>
# <h1>My Gallery</h1>
# </body>
# </html>
# HTML
#   return full_html
# end

# #[v0.4] Support multiple images
# def top_html
# full_html = <<-HTML
# <!DOCTYPE html>
# <html>
# <head>
# <style>
# h1 {
#   color: #000;
#   font-family: Georgia;
#   font-size: 20px;
#   line-height: 22px;
#   font-weight: 700;
#   font-style: italic;
#   letter-spacing: 0.01em;
#   word-spacing: -0.1em;
# }
# img {
#   width: 225px;
#   height: 225px;
#   border-color: #fff;
#   border-width: 1px;
#   box-shadow: 1px 1px 2px lightgray;
# }
# </style>
# <title>My Gallery</title>
# </head>
# <body>
# <h1>My Gallery</h1>
# HTML
#   return full_html
# end

# def image_tag_list
#   ARGV.each do |file|
#     absolute_path = absolute_path(file)
#     image_tag_source_path = image_tag(absolute_path)
#     puts "#{image_tag_source_path}"
#   end
# end

# def bottom_html
# full_html = <<-HTML
# </body>
# </html>
# HTML
#   return full_html
# end

# #[v0.5] Make it look nicer with CSS

# #[v1.0] Generate a gallery directory
# #create a new directory called public
# # create and write to a file
# #copy files from one directory to another

# def create_new_directory()
#   Dir.mkdir("public") #=> Creates a directory called "Public"
#   Dir.mkdir("public/imgs") #=> Creates a directory called "Public/imgs"
# end


# #Create a gallery.html file
# def create_and_write_to_file(files)
#   create_html_file = File.open("public/gallery.html", "w")
#   create_html_file.puts(top_html)
#   create_html_file.puts(image_tag_list(files))
#   create_html_file.puts(bottom_html)
# end

# #copies bunny-1.jpg bunny-2.jpg bunny-3.jpg bunny-4.jpg from /photos
# #into public/imgs folder
# require 'fileutils'

# def copy_photo_files
#   FileUtils.cp_r 'photos/.', 'public/imgs'
# end



# #=================================================================================
# #SANITY CHECKS

  # [v0.1]
  p absolute_path("photos/bunny-1.jpg") == "/Users/Tiao/photo-gallery-cli/photos/bunny-1.jpg"
  # [v0.2]

  file_name = ARGV[0]

  puts image_tag(absolute_path(file_name))
  p image_tag("photos/bunny-1.jpg") == "<img src=\"/Users/Tiao/photo-gallery-cli/photos/bunny-1.jpg\">"

#   #[v0.3]
#   # absolute_path = File.absolute_path(photo_file)
#   # image_tag_source_path = image_tag(absolute_path)
#   # puts generate_HTML_page(image_tag_source_path)

#   #[v0.4]
# if __FILE__ == $PROGRAM_NAME
#   puts top_html
#   image_tag_list
#   puts bottom_html
# end

# #[v1.0]
# if __FILE__ == $PROGRAM_NAME
#   files = ARGV

#   create_new_directory
#   create_and_write_to_file(files)
#   copy_photo_files
# end