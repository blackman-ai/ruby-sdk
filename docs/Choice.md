# BlackmanClient::Choice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **finish_reason** | **String** |  | [optional] |
| **index** | **Integer** |  |  |
| **message** | [**Message**](Message.md) |  |  |

## Example

```ruby
require 'blackman_client'

instance = BlackmanClient::Choice.new(
  finish_reason: null,
  index: null,
  message: null
)
```

