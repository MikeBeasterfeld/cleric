CarrierWave.configure do |config|
  config.ftp_host = ENV["FTP_HOST"]
  config.ftp_port = ENV["FTP_PORT"] || 21
  config.ftp_user = ENV["FTP_USER"]
  config.ftp_passwd = ENV["FTP_PASSWORD"]
  config.ftp_folder = ENV["FTP_FOLDER"]
  config.ftp_url = ENV["FTP_URL"]
  config.ftp_passive = ENV["FTP_PASSIVE"] == "true" ? true : false # false by default

  # config.cache_dir = '/home/vagrant/uploads_tmp/tmp/uploads' if File.directory?('/home/vagrant') && Rails.env.development?
  # config.root = '/home/vagrant/uploads_tmp/tmp' if File.directory?('/home/vagrant') && Rails.env.development?
end
