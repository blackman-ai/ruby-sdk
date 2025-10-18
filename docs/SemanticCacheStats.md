# BlackmanClient::SemanticCacheStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avg_similarity_score** | **Float** | Average similarity score for cache hits |  |
| **cost_saved** | **Float** | Total cost saved from cache hits |  |
| **hit_rate** | **Float** | Cache hit rate as a percentage |  |
| **tokens_saved** | **Integer** | Total tokens saved from cache hits |  |
| **total_hits** | **Integer** | Total number of cache hits |  |
| **total_misses** | **Integer** | Total number of cache misses |  |

## Example

```ruby
require 'blackman_client'

instance = BlackmanClient::SemanticCacheStats.new(
  avg_similarity_score: null,
  cost_saved: null,
  hit_rate: null,
  tokens_saved: null,
  total_hits: null,
  total_misses: null
)
```

