# BlackmanClient::FeedbackApi

All URIs are relative to *https://app.useblackman.ai/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**submit_feedback**](FeedbackApi.md#submit_feedback) | **POST** /v1/feedback | Submit feedback for a completion response |


## submit_feedback

> <SubmitFeedbackResponse> submit_feedback(submit_feedback_request)

Submit feedback for a completion response

### Examples

```ruby
require 'time'
require 'blackman_client'
# setup authorization
BlackmanClient.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BlackmanClient::FeedbackApi.new
submit_feedback_request = BlackmanClient::SubmitFeedbackRequest.new({is_positive: false, response_id: 'response_id_example'}) # SubmitFeedbackRequest | 

begin
  # Submit feedback for a completion response
  result = api_instance.submit_feedback(submit_feedback_request)
  p result
rescue BlackmanClient::ApiError => e
  puts "Error when calling FeedbackApi->submit_feedback: #{e}"
end
```

#### Using the submit_feedback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubmitFeedbackResponse>, Integer, Hash)> submit_feedback_with_http_info(submit_feedback_request)

```ruby
begin
  # Submit feedback for a completion response
  data, status_code, headers = api_instance.submit_feedback_with_http_info(submit_feedback_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubmitFeedbackResponse>
rescue BlackmanClient::ApiError => e
  puts "Error when calling FeedbackApi->submit_feedback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **submit_feedback_request** | [**SubmitFeedbackRequest**](SubmitFeedbackRequest.md) |  |  |

### Return type

[**SubmitFeedbackResponse**](SubmitFeedbackResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

