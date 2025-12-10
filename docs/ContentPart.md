# BlackmanClient::ContentPart

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'blackman_client'

BlackmanClient::ContentPart.openapi_one_of
# =>
# [
#   :'ContentPartOneOf',
#   :'ContentPartOneOf1'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'blackman_client'

BlackmanClient::ContentPart.build(data)
# => #<ContentPartOneOf:0x00007fdd4aab02a0>

BlackmanClient::ContentPart.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ContentPartOneOf`
- `ContentPartOneOf1`
- `nil` (if no type matches)

