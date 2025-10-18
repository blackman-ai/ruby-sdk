# BlackmanClient::CompletionsApi

All URIs are relative to *https://app.useblackman.ai/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**completions**](CompletionsApi.md#completions) | **POST** /v1/completions |  |


## completions

> <CompletionResponse> completions(completion_request, opts)



### Examples

```ruby
require 'time'
require 'blackman_client'
# setup authorization
BlackmanClient.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BlackmanClient::CompletionsApi.new
completion_request = BlackmanClient::CompletionRequest.new({messages: [BlackmanClient::Message.new({content: 'content_example', role: 'role_example'})], model: 'gpt-4', provider: BlackmanClient::Provider::OPEN_AI}) # CompletionRequest | 
opts = {
  x_provider_api_key: 'x_provider_api_key_example' # String | Optional provider API key to override stored or system keys
}

begin
  
  result = api_instance.completions(completion_request, opts)
  p result
rescue BlackmanClient::ApiError => e
  puts "Error when calling CompletionsApi->completions: #{e}"
end
```

#### Using the completions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CompletionResponse>, Integer, Hash)> completions_with_http_info(completion_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.completions_with_http_info(completion_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CompletionResponse>
rescue BlackmanClient::ApiError => e
  puts "Error when calling CompletionsApi->completions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **completion_request** | [**CompletionRequest**](CompletionRequest.md) |  |  |
| **x_provider_api_key** | **String** | Optional provider API key to override stored or system keys | [optional] |

### Return type

[**CompletionResponse**](CompletionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

