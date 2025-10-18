# BlackmanClient::SubmitFeedbackRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_positive** | **Boolean** | True for thumbs up, false for thumbs down |  |
| **metadata** | **Object** | Optional metadata (e.g., user_agent, session_id, etc.) | [optional] |
| **response_id** | **String** | The response ID from the completion request |  |

## Example

```ruby
require 'blackman_client'

instance = BlackmanClient::SubmitFeedbackRequest.new(
  is_positive: null,
  metadata: null,
  response_id: null
)
```

