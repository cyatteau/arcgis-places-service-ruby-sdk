# OpenapiClient::Category

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | The category Id uniquely identifies this category or type of place.

The name of the category can be looked up using the
&#x60;places/categories&#x60; endpoint. For example, 17119 is the id for a
&quot;Bicycle Store&quot;.
 |  |
| **label** | **String** | The label that describes the category.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Category.new(
  category_id: 17119,
  label: Bicycle Store
)
```

