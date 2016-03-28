CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage :fog
    config.fog_credentials = {
      provider:               "AWS",
      aws_access_key_id:      ENV["s3_key_id"],
      aws_secret_access_key:  ENV["s3_secret_key"],
      region:                 ENV["s3_region"]
    }
    config.fog_directory =    ENV["s3_bucket"]
  else
    config.storage :file
  end
end
