class Medium < ActiveRecord::Base
  IMAGES = %w[image/png image/jpeg]

  mount_uploader :localmedia, LocalmediaUploader
  mount_uploader :ftpmedia, FtpmediaUploader
  mount_uploader :awsmedia, AwsmediaUploader

  validates_presence_of :name
  validates_uniqueness_of :name

  def media
  	puts "*** checking localmedia #{localmedia}"
  	return localmedia if !localmedia.file.nil?
  	puts "*** checking ftpmedia #{ftpmedia}"
  	return ftpmedia if !ftpmedia.file.nil?
  	puts "*** checking awsmedia #{awsmedia}"
  	return awsmedia if !awsmedia.file.nil?
  end

  def image?
  	IMAGES.include? filetype
  end

  before_save :clean_uploaders

  def clean_uploaders
  	if localmedia_changed?
  		remove_ftpmedia!
  		remove_awsmedia!
	  	puts "*** before_save localmedia changed #{localmedia_changed?}"
	  	return
  	end

  	if ftpmedia_changed?
  		remove_localmedia!
  		remove_awsmedia!
	  	puts "*** before_save ftpmedia changed #{ftpmedia_changed?}"
	  	return
  	end

  	if awsmedia_changed?
  		remove_localmedia!
  		remove_ftpmedia!
	  	puts "*** before_save awsmedia changed #{awsmedia_changed?}"
	  	return
  	end
  end

  def self.asset_url (name)
  	asset = self.find_by_name(name)
  	asset.media if !asset.nil?
  end

end

