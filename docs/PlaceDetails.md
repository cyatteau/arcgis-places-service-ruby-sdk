# OpenapiClient::PlaceDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **place_id** | **String** | The unique Id of this place.
 |  |
| **categories** | [**Array&lt;Category&gt;**](Category.md) | A list of category objects for a place.  Categories are uniquely identified by a &#x60;categoryId&#x60;. For example, &#x60;17119&#x60; identifies a \&quot;Bicycle Store\&quot; and &#x60;10051&#x60; identifies a \&quot;Stadium\&quot;. Note that a single place can belong to multiple categories (for example, a petrol station could also have a super-market).  This property is part of the \&quot;Place\&quot; attribute group.  | [optional] |
| **name** | **String** | The name of the place, or point of interest.  This property is part of the \&quot;Place\&quot; attribute group.  | [optional] |
| **location** | [**Point**](Point.md) |  | [optional] |
| **description** | **String** | A text description of the place.  This property is part of the \&quot;Details\&quot; attribute group.  | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |
| **additional_locations** | [**AdditionalLocations**](AdditionalLocations.md) |  | [optional] |
| **contact_info** | [**ContactInfo**](ContactInfo.md) |  | [optional] |
| **social_media** | [**SocialMedia**](SocialMedia.md) |  | [optional] |
| **hours** | [**Hours**](Hours.md) |  | [optional] |
| **rating** | [**Rating**](Rating.md) |  | [optional] |
| **chains** | [**Array&lt;ChainInfo&gt;**](ChainInfo.md) | Information about all the chains the place belongs to.  This object and child properties are part of the \&quot;Details\&quot; attribute group.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PlaceDetails.new(
  place_id: 722d8e1ba4db8ec5ef256b09cf060782,
  categories: [{&quot;categoryId&quot;:17119,&quot;label&quot;:&quot;Bicycle Store&quot;}],
  name: Esri International,
  location: null,
  description: Esri is the global market leader in geographic information system
(GIS) technology, location intelligence, mapping software, and
spatial analytics. Esri software is deployed in more than 350,000
organizations and 75 percent of Fortune 500 companies.
,
  address: null,
  additional_locations: null,
  contact_info: null,
  social_media: null,
  hours: null,
  rating: null,
  chains: [{&quot;name&quot;:&quot;Starbucks&quot;}]
)
```

