# OpenapiClient::ErrorError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | A code identifying the type of error.   This can be an HTTP status code, &#x60;498&#x60; (invalid or expired token), or &#x60;499&#x60; (missing token).  |  |
| **message** | **String** | A message describing the error. |  |
| **details** | **Array&lt;String&gt;** | List of details about the error. | [optional] |
| **rest_info_url** | **String** | A link to general information about the service, such as the owning system and token service URL.   This property is only present for errors relating to tokens.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ErrorError.new(
  code: 400,
  message: Parameter invalid.,
  details: null,
  rest_info_url: https://places-api.arcgis.com/arcgis/rest/info
)
```

