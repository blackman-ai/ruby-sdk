# Blackman AI Ruby SDK

Official Ruby client for [Blackman AI](https://www.useblackman.ai) - The AI API proxy that optimizes token usage to reduce costs.

## Features

- 🚀 Drop-in replacement for OpenAI, Anthropic, and other LLM APIs
- 💰 Automatic token optimization (save 20-40% on costs)
- 📊 Built-in analytics and cost tracking
- 🔒 Enterprise-grade security with SSO support
- ⚡ Low latency overhead (<50ms)
- 🎯 Semantic caching for repeated queries

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'blackman_client', '~> 0.0.5'
```

And then execute:

```bash
bundle install
```

Or install it yourself:

```bash
gem install blackman_client
```

## Quick Start

```ruby
require 'blackman_client'

# Configure client
BlackmanClient.configure do |config|
  config.host = 'app.useblackman.ai'
  config.scheme = 'https'
  config.api_key['Authorization'] = 'Bearer sk_your_blackman_api_key'
end

api = BlackmanClient::CompletionsApi.new

# Create completion request
request = BlackmanClient::CompletionRequest.new(
  provider: 'OpenAI',
  model: 'gpt-4o',
  messages: [
    BlackmanClient::Message.new(
      role: 'user',
      content: 'Explain quantum computing in simple terms'
    )
  ]
)

# Send request
begin
  response = api.completions(request)
  puts response.choices[0].message.content
  puts "Tokens used: #{response.usage.total_tokens}"
rescue BlackmanClient::ApiError => e
  puts "Error: #{e}"
end
```

## Authentication

Get your API key from the [Blackman AI Dashboard](https://app.useblackman.ai/settings/api-keys).

```ruby
BlackmanClient.configure do |config|
  config.host = 'app.useblackman.ai'
  config.scheme = 'https'
  config.api_key['Authorization'] = 'Bearer sk_your_blackman_api_key'
end
```

## Framework Integration

### Ruby on Rails

Create an initializer `config/initializers/blackman.rb`:

```ruby
require 'blackman_client'

BlackmanClient.configure do |config|
  config.host = 'app.useblackman.ai'
  config.scheme = 'https'
  config.api_key['Authorization'] = "Bearer #{ENV['BLACKMAN_API_KEY']}"
end
```

Create a service class `app/services/chat_service.rb`:

```ruby
class ChatService
  def initialize
    @api = BlackmanClient::CompletionsApi.new
  end

  def chat(message)
    request = BlackmanClient::CompletionRequest.new(
      provider: 'OpenAI',
      model: 'gpt-4o',
      messages: [
        BlackmanClient::Message.new(
          role: 'user',
          content: message
        )
      ]
    )

    response = @api.completions(request)
    response.choices[0].message.content
  rescue BlackmanClient::ApiError => e
    Rails.logger.error "Blackman API error: #{e}"
    raise
  end
end
```

Use in a controller:

```ruby
class ChatsController < ApplicationController
  def create
    service = ChatService.new
    response = service.chat(params[:message])
    render json: { response: response }
  rescue BlackmanClient::ApiError => e
    render json: { error: e.message }, status: :bad_request
  end
end
```

### Sinatra

```ruby
require 'sinatra'
require 'blackman_client'
require 'json'

# Configure Blackman
BlackmanClient.configure do |config|
  config.host = 'app.useblackman.ai'
  config.scheme = 'https'
  config.api_key['Authorization'] = "Bearer #{ENV['BLACKMAN_API_KEY']}"
end

post '/chat' do
  content_type :json

  data = JSON.parse(request.body.read)

  api = BlackmanClient::CompletionsApi.new
  request = BlackmanClient::CompletionRequest.new(
    provider: 'OpenAI',
    model: 'gpt-4o',
    messages: [
      BlackmanClient::Message.new(
        role: 'user',
        content: data['message']
      )
    ]
  )

  begin
    response = api.completions(request)
    { response: response.choices[0].message.content }.to_json
  rescue BlackmanClient::ApiError => e
    status 400
    { error: e.message }.to_json
  end
end
```

## Advanced Usage

### Custom Timeouts

```ruby
BlackmanClient.configure do |config|
  config.host = 'app.useblackman.ai'
  config.scheme = 'https'
  config.api_key['Authorization'] = 'Bearer sk_your_blackman_api_key'
  config.timeout = 60  # seconds
end
```

### Error Handling

```ruby
begin
  response = api.completions(request)
  puts response.choices[0].message.content
rescue BlackmanClient::ApiError => e
  puts "HTTP Status Code: #{e.code}"
  puts "Response Headers: #{e.response_headers}"
  puts "Response Body: #{e.response_body}"
rescue StandardError => e
  puts "Unexpected error: #{e.message}"
end
```

### Streaming Responses

```ruby
# For streaming, use a custom approach with Faraday
require 'faraday'

conn = Faraday.new(url: 'https://app.useblackman.ai') do |f|
  f.headers['Authorization'] = 'Bearer sk_your_blackman_api_key'
  f.adapter Faraday.default_adapter
end

response = conn.post('/v1/completions') do |req|
  req.headers['Content-Type'] = 'application/json'
  req.body = {
    provider: 'OpenAI',
    model: 'gpt-4o',
    messages: [{ role: 'user', content: 'Hello!' }],
    stream: true
  }.to_json
end

response.body.each_line do |line|
  puts line if line.start_with?('data:')
end
```

### Retry Logic

```ruby
require 'retriable'

Retriable.retriable(tries: 3, base_interval: 1, multiplier: 2) do
  response = api.completions(request)
  puts response.choices[0].message.content
end
```

## Documentation

- [Full API Reference](https://app.useblackman.ai/docs)
- [Getting Started Guide](https://app.useblackman.ai/docs/getting-started)
- [Ruby Examples](https://github.com/blackman-ai/ruby-sdk/tree/main/examples)
- [RubyDoc](https://rubydoc.info/gems/blackman_client)

## Requirements

- Ruby 2.7 or higher

## Support

- 📧 Email: [support@blackman.ai](mailto:support@blackman.ai)
- 💬 Discord: [Join our community](https://discord.gg/blackman-ai)
- 🐛 Issues: [GitHub Issues](https://github.com/blackman-ai/ruby-sdk/issues)

## License

MIT © Blackman AI
