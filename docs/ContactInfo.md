# OpenapiClient::ContactInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **telephone** | **String** | The telephone number of the place. | [optional] |
| **website** | **String** | The website address of the place. | [optional] |
| **fax** | **String** | Fax number. | [optional] |
| **email** | **String** | Email address. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ContactInfo.new(
  telephone: (909) 793-2853,
  website: https://www.esri.com/en-us/home,
  fax: 0800 169 2008,
  email: support@esri.com
)
```

