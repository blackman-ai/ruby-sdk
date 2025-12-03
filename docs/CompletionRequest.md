# BlackmanClient::CompletionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_tokens** | **Integer** |  | [optional] |
| **stop** | **Array&lt;String&gt;** |  | [optional] |
| **stream** | **Boolean** |  | [optional] |
| **temperature** | **Float** |  | [optional] |
| **top_p** | **Float** |  | [optional] |
| **messages** | [**Array&lt;Message&gt;**](Message.md) |  |  |
| **metadata** | **Object** | Optional metadata for tracking, analytics, and conditional processing. Can include session IDs, user context, feature flags, or any custom data. This metadata is logged with the request and can be used for filtering/analysis. | [optional] |
| **model** | **String** |  |  |
| **provider** | [**Provider**](Provider.md) |  |  |

## Example

```ruby
require 'blackman_client'

instance = BlackmanClient::CompletionRequest.new(
  max_tokens: 1024,
  stop: null,
  stream: null,
  temperature: 0.7,
  top_p: 0.9,
  messages: null,
  metadata: null,
  model: gpt-4,
  provider: null
)
```

