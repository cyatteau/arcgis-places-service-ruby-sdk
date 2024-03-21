# OpenapiClient::Pagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **previous_url** | **String** | A url for fetching the previous page of results.   Use this property to request the previous page of results if available. If this property is omitted then there are no previous pages of results. You must also supply authentication details, such as a &#x60;token&#x60;, to make a previous page request.  | [optional] |
| **next_url** | **String** | A url for fetching the next page of results.   Use this property to request the next page of results if available. If this property is omitted then there are no more pages of results available. You must also supply authentication details, such as a &#x60;token&#x60;, to make a next page request.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Pagination.new(
  previous_url: https://places-api.arcgis.com/arcgis/rest/services/places-service/v1/places/near-point?x&#x3D;-117.194769&amp;y&#x3D;34.057289&amp;radius&#x3D;50.0&amp;offset&#x3D;0&amp;pageSize&#x3D;10,
  next_url: https://places-api.arcgis.com/arcgis/rest/services/places-service/v1/places/near-point?x&#x3D;-117.194769&amp;y&#x3D;34.057289&amp;radius&#x3D;50.0&amp;offset&#x3D;20&amp;pageSize&#x3D;10
)
```

