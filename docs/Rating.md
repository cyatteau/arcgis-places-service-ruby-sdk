# OpenapiClient::Rating

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price** | **String** | An indication of the overall price of a place based on user reviews.  | [optional] |
| **user** | **Float** | A rating for the place based on user-reviews from 0 to 5, where 5 is the best rating.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Rating.new(
  price: cheap,
  user: 4.5
)
```

