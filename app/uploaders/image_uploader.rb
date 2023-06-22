class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  
  storage :file
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :icon do
    process resize_to_limit: [50, 50]
  end
  version :thumb do
    process resize_to_limit: [200, 200]
  end
  version :mailer do
    process resize_to_limit: [130, 130]
  end
end
