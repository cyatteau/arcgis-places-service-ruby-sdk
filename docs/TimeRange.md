# OpenapiClient::TimeRange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The start of a time range in the format \&quot;HH:MM\&quot;. |  |
| **to** | **String** | The end of a time range in the format \&quot;HH:MM\&quot;. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TimeRange.new(
  from: 09:00,
  to: 930
)
```

