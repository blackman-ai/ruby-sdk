# BlackmanClient::CompletionOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_tokens** | **Integer** |  | [optional] |
| **stop** | **Array&lt;String&gt;** |  | [optional] |
| **stream** | **Boolean** |  | [optional] |
| **temperature** | **Float** |  | [optional] |
| **top_p** | **Float** |  | [optional] |

## Example

```ruby
require 'blackman_client'

instance = BlackmanClient::CompletionOptions.new(
  max_tokens: 1024,
  stop: null,
  stream: null,
  temperature: 0.7,
  top_p: 0.9
)
```

