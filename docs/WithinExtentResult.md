# OpenapiClient::WithinExtentResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **place_id** | **String** | The unique Id of this place.

This place Id can be passed to the &#x60;places/{placeId}&#x60; endpoint to
retrieve additional details.
 |  |
| **location** | [**Point**](Point.md) |  |  |
| **categories** | [**Array&lt;Category&gt;**](Category.md) | A list of category objects for a place.  Categories are uniquely identified by a &#x60;categoryId&#x60;. For example, &#x60;17119&#x60; identifies a \&quot;Bicycle Store\&quot; and &#x60;10051&#x60; identifies a \&quot;Stadium\&quot;. Note that a single place can belong to multiple categories (for example, a petrol station could also have a super-market).  |  |
| **name** | **String** | The name of the place, or point of interest.  You can search for places by name using the &#x60;searchText&#x60; property in a &#x60;places/near-point&#x60; or &#x60;places/within-extent&#x60; request.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WithinExtentResult.new(
  place_id: 722d8e1ba4db8ec5ef256b09cf060782,
  location: null,
  categories: [{&quot;categoryId&quot;:17119,&quot;label&quot;:&quot;Bicycle Store&quot;}],
  name: Esri International
)
```

