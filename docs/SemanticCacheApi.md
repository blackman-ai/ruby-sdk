# BlackmanClient::SemanticCacheApi

All URIs are relative to *https://app.useblackman.ai/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_config**](SemanticCacheApi.md#get_config) | **GET** /v1/semantic-cache/config | Get semantic cache configuration for the current account |
| [**get_stats**](SemanticCacheApi.md#get_stats) | **GET** /v1/semantic-cache/stats | Get semantic cache statistics including hit rate and savings |
| [**invalidate_all**](SemanticCacheApi.md#invalidate_all) | **DELETE** /v1/semantic-cache/invalidate | Invalidate all cache entries for the current account |
| [**update_config**](SemanticCacheApi.md#update_config) | **PUT** /v1/semantic-cache/config | Update semantic cache configuration for the current account |


## get_config

> <SemanticCacheConfig> get_config

Get semantic cache configuration for the current account

### Examples

```ruby
require 'time'
require 'blackman_client'
# setup authorization
BlackmanClient.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BlackmanClient::SemanticCacheApi.new

begin
  # Get semantic cache configuration for the current account
  result = api_instance.get_config
  p result
rescue BlackmanClient::ApiError => e
  puts "Error when calling SemanticCacheApi->get_config: #{e}"
end
```

#### Using the get_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SemanticCacheConfig>, Integer, Hash)> get_config_with_http_info

```ruby
begin
  # Get semantic cache configuration for the current account
  data, status_code, headers = api_instance.get_config_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SemanticCacheConfig>
rescue BlackmanClient::ApiError => e
  puts "Error when calling SemanticCacheApi->get_config_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SemanticCacheConfig**](SemanticCacheConfig.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stats

> <SemanticCacheStats> get_stats

Get semantic cache statistics including hit rate and savings

### Examples

```ruby
require 'time'
require 'blackman_client'
# setup authorization
BlackmanClient.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BlackmanClient::SemanticCacheApi.new

begin
  # Get semantic cache statistics including hit rate and savings
  result = api_instance.get_stats
  p result
rescue BlackmanClient::ApiError => e
  puts "Error when calling SemanticCacheApi->get_stats: #{e}"
end
```

#### Using the get_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SemanticCacheStats>, Integer, Hash)> get_stats_with_http_info

```ruby
begin
  # Get semantic cache statistics including hit rate and savings
  data, status_code, headers = api_instance.get_stats_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SemanticCacheStats>
rescue BlackmanClient::ApiError => e
  puts "Error when calling SemanticCacheApi->get_stats_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SemanticCacheStats**](SemanticCacheStats.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invalidate_all

> <InvalidateResponse> invalidate_all

Invalidate all cache entries for the current account

### Examples

```ruby
require 'time'
require 'blackman_client'
# setup authorization
BlackmanClient.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BlackmanClient::SemanticCacheApi.new

begin
  # Invalidate all cache entries for the current account
  result = api_instance.invalidate_all
  p result
rescue BlackmanClient::ApiError => e
  puts "Error when calling SemanticCacheApi->invalidate_all: #{e}"
end
```

#### Using the invalidate_all_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvalidateResponse>, Integer, Hash)> invalidate_all_with_http_info

```ruby
begin
  # Invalidate all cache entries for the current account
  data, status_code, headers = api_instance.invalidate_all_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvalidateResponse>
rescue BlackmanClient::ApiError => e
  puts "Error when calling SemanticCacheApi->invalidate_all_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InvalidateResponse**](InvalidateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_config

> update_config(semantic_cache_config)

Update semantic cache configuration for the current account

### Examples

```ruby
require 'time'
require 'blackman_client'
# setup authorization
BlackmanClient.configure do |config|
  # Configure Bearer authorization: BearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = BlackmanClient::SemanticCacheApi.new
semantic_cache_config = BlackmanClient::SemanticCacheConfig.new({enabled: false, similarity_threshold: 3.56, ttl_seconds: 3.56}) # SemanticCacheConfig | 

begin
  # Update semantic cache configuration for the current account
  api_instance.update_config(semantic_cache_config)
rescue BlackmanClient::ApiError => e
  puts "Error when calling SemanticCacheApi->update_config: #{e}"
end
```

#### Using the update_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_config_with_http_info(semantic_cache_config)

```ruby
begin
  # Update semantic cache configuration for the current account
  data, status_code, headers = api_instance.update_config_with_http_info(semantic_cache_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue BlackmanClient::ApiError => e
  puts "Error when calling SemanticCacheApi->update_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **semantic_cache_config** | [**SemanticCacheConfig**](SemanticCacheConfig.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

