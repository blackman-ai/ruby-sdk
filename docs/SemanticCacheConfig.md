# BlackmanClient::SemanticCacheConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether semantic caching is enabled |  |
| **similarity_threshold** | **Float** | Similarity threshold for cache hits (0.0-1.0) |  |
| **ttl_seconds** | **Integer** | Time-to-live for cache entries in seconds |  |

## Example

```ruby
require 'blackman_client'

instance = BlackmanClient::SemanticCacheConfig.new(
  enabled: null,
  similarity_threshold: null,
  ttl_seconds: null
)
```

