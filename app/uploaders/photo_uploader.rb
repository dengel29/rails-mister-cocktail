class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :standard do
    resize_to_fit 800, 600
  end

  version :small do
    cloudinary_transformation radius: 20,
      width: 150, height: 150, crop: :thumb
  end
end
