token = Rails.application.credentials.openai_access_token ||
        ENV["OPENAI_ACCESS_TOKEN"]

raise "OPENAI_ACCESS_TOKEN is missing" unless token.present?

OpenAI.configure do |config|
  config.access_token = token
end
