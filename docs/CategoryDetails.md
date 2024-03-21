# OpenapiClient::CategoryDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | A unique identifying string for a category. 

This matches the &#x60;categoryId&#x60; of a place&#39;s &#x60;category&#x60; property.
 |  |
| **full_label** | **Array&lt;String&gt;** | The full list of labels that describe the category, including its more generic parent categories.  |  |
| **parents** | **Array&lt;String&gt;** | The list of parent category Ids for this category.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CategoryDetails.new(
  category_id: 17119,
  full_label: null,
  parents: null
)
```

