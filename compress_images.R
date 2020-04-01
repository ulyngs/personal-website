# resize and compress images ===
library(magick)
library(tidyverse)

# function to compress and move original image to subfolder
compress_and_move <- function(large_image, max_width = 1400, uncompressed_name = "uncompressed_images", quality = 0.5) {
  # get the file name, type, and path
  file_name <- str_extract(large_image, "[\\w-]+\\.(jpg|png)")
  file_type <- str_extract(large_image, "(jpg|png)$")
  file_path <- str_extract(large_image, "(.*/)")
  
  # read the image into magick
  image_raw <- image_read(large_image)
  
  print(image_info(image_raw)["width"])
  # resize the original image, keeping the file format
  if (image_info(image_raw)["width"] > max_width) {  # only resize if smaller 
      
      image_resized <- image_scale(image = image_raw, geometry = as.character(max_width))
      
      # create a folder for the uncompressed images
      dir.create(str_c(file_path, uncompressed_name))
      
      # file path for the uncompressed
      file_out <- str_c(file_path, uncompressed_name, "/", file_name)
      
      # create a copy of the original image
      file.copy(from = large_image, to = file_out, overwrite = TRUE)
      
      # write the new image
      image_write(image = image_resized, path = large_image, format = file_type)
    } 
}

# function to check if size is too large
check_if_too_large <- function(file_in, cutoff = 600000) {
  return(file.size(file_in) > cutoff)
}


### do this
image_files <- list.files(path = "static", pattern = "\\.(jpg|png)$", recursive = TRUE)

image_df <- tibble(
  images = image_files,
  full_path = str_c("static/", images)
)

images_to_resize <- image_df %>% 
  mutate(needs_resizing = map_lgl(full_path, check_if_too_large)) %>% 
  filter(needs_resizing == TRUE)

walk(images_to_resize$full_path, compress_and_move)


# image_read("static/images/ribbon.png") %>%
#   image_resize(geometry = '50') %>%
#   image_write("static/images/ribbon_xs.png")