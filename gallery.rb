#
# HTML Photo Gallery Generator
# ---
# This program takes a set of images and generates an HTML image gallery.
#
# Usage:
# $ ruby gallery.rb image.jpg pic.png funny.gif
#

module HTMLGenerator
  def html_template(*content)
    # Use the heredoc syntax to create a multi-line string for defining the
    # template of the html page to be generated
    layout = <<-HTML
<!DOCTYPE html>
<html>
<head>
  <title>My Gallery</title>
  <style type="text/css" media="screen">
    #{ _style }
  </style>
</head>
<body>
  <div class="container">
    <h1>My Gallery</h1>
    #{ content.join("\n    ") }
  </div>
</body>
</html>
    HTML

    layout
  end

  def img_tag(source_file)
    # Write an HTML <img> tag with the photo file provided
    # as the value for the src attribute
    "<img src=\"#{source_file}\">"
  end

  def _style
    <<-CSS
* {
  font-family: "Helvetica", sans-serif;
}

.container {
  margin: 0 auto;
  width: 720px;
}

img {
  width: 200px;
  height: 200px;
  padding: 0px;
  margin-right: 24px;
  border: 3px solid #ccc;
  border-radius: 2px;
  box-shadow: 3px 3px 5px #ccc;
}
    CSS
  end
end

class PhotoGallery
  include HTMLGenerator

  attr_reader :photos

  def initialize(photos)
    @photos = photos
  end

  def to_html
    # Generate an array of <img> tags
    images = photos.map { |photo| img_tag(photo) }

    # Return the full HTML template with the images in place
    html_template( images )
  end
end

# Only execute the following code if the program being run is this same file,
# i.e. this will only run if you enter the command
#
#   $ ruby gallery.rb some-photo.jpg
#
# in the command line.
#
# This way, if other programs want to use the utility functions declared
# in this file, they can `require` the file _without_ actually executing
# the code below, which expects an argument and writes to STDOUT.
if __FILE__ == $PROGRAM_NAME
  # Expect a list of photo files
  photo_files = ARGV

  # Create an array of absolute paths to each photo
  absolute_paths_to_photos = photo_files.map { |file| File.absolute_path(file) }

  # Build a new photo gallery
  gallery = PhotoGallery.new(absolute_paths_to_photos)

  # Write a full HTML page to STDOUT with the list of <img> tags provided as the
  # content of the page
  puts gallery.to_html
end

