ActiveAdmin.register Song do

permit_params :title, :title, :price, 
			:image_file_name, :image_content_type, 
			:image_file_size, :image_updated_at, :mp3_file_name, 
			:mp3_content_type, :mp3_file_size, :artist_id, :genre_id

end
