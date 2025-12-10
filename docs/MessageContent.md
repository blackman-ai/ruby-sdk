# BlackmanClient::MessageContent

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'blackman_client'

BlackmanClient::MessageContent.openapi_one_of
# =>
# [
#   :'Array<ContentPart>',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'blackman_client'

BlackmanClient::MessageContent.build(data)
# => #<Array<ContentPart>:0x00007fdd4aab02a0>

BlackmanClient::MessageContent.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<ContentPart>`
- `String`
- `nil` (if no type matches)

