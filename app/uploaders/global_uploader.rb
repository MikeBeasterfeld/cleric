require 'carrierwave/processing/mime_types'
require 'mp3info'

class GlobalUploader < CarrierWave::Uploader::Base
  include CarrierWave::MimeTypes
  # include CarrierWave::RMagick

  process :set_content_type
  process :save_content_type_and_size_in_model

  # version :thumb, if: :image? do
  #   puts "+++ Processing thumb"
  #   process :resize_to_fill => [200,200]
  # end

  def save_content_type_and_size_in_model
    model.size = file.size
    if file.content_type
      model.filetype = file.content_type
      if file.content_type == 'audio/mp3'
        Mp3Info.open(file.file) do |mp3info|
          model.length = mp3info.length.to_i
        end
      elsif Medium::IMAGES.include? file.content_type

      else
        model.errors.add(:filetype, "is unknown: #{file.content_type}")
      end
    end
  end

private

  # def image? media
  #   puts "$$$ checking if image #{media.inspect}"
  #   ['image/png', 'image/jpeg'].include? media.content_type
  # end
end
