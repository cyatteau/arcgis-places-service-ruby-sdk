# OpenapiClient::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street_address** | **String** | The street address for a place, for example the street name and number.  | [optional] |
| **extended** | **String** | Additional address information, including suite or apartment numbers.  | [optional] |
| **locality** | **String** | The city, town, or equivalent. | [optional] |
| **designated_market_area** | **String** | As defined by Nielsen, signifies a region where the population can receive similar TV and radio offerings (US only).  | [optional] |
| **region** | **String** | The state, province, territory or equivalent.  | [optional] |
| **postcode** | **String** | Postal code or equivalent (zip code in the US).   Format will be localized based on country.  | [optional] |
| **po_box** | **String** | Post-office box. | [optional] |
| **country** | **String** | Two letter ISO country code | [optional] |
| **admin_region** | **String** | Additional sub-division.   Usually, but not always, a country sub-division (e.g., Scotland).  | [optional] |
| **post_town** | **String** | Town/place employed in postal addressing.  | [optional] |
| **neighborhood** | **Array&lt;String&gt;** | The neighborhoods of the place.  | [optional] |
| **census_block_id** | **String** | The census block Id of the place (US only).  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Address.new(
  street_address: 380 New York St,
  extended: Unit 32,
  locality: Redlands,
  designated_market_area: Los Angeles,
  region: CA,
  postcode: 92373,
  po_box: null,
  country: US,
  admin_region: Scotland,
  post_town: Edinburgh,
  neighborhood: [&quot;Downtown&quot;],
  census_block_id: 060710081003002
)
```

