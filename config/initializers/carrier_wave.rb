CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage :fog
    config.fog_credentials = {
      provider:               "AWS",
      aws_access_key_id:      ENV["aws_s3_access_key_id"],
      aws_secret_access_key:  ENV["aws_s3_secret_access_key"],
      region:                 ENV["aws_region"]
    }
    config.fog_directory = "xditerailstest"
  else
    config.storage :file
  end
end
