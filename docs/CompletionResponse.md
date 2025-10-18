# BlackmanClient::CompletionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **choices** | [**Array&lt;Choice&gt;**](Choice.md) |  |  |
| **created** | **Integer** |  |  |
| **id** | **String** |  |  |
| **model** | **String** |  |  |
| **provider** | [**Provider**](Provider.md) |  |  |
| **usage** | [**Usage**](Usage.md) |  |  |

## Example

```ruby
require 'blackman_client'

instance = BlackmanClient::CompletionResponse.new(
  choices: null,
  created: null,
  id: null,
  model: null,
  provider: null,
  usage: null
)
```

