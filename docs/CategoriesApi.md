# OpenapiClient::CategoriesApi

All URIs are relative to *https://places-api.arcgis.com/arcgis/rest/services/places-service/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**categories_category_id_get**](CategoriesApi.md#categories_category_id_get) | **GET** /categories/{categoryId} | Get the category details for a category ID. |
| [**categories_get**](CategoriesApi.md#categories_get) | **GET** /categories | Return the name and category ID of all categories, or categories which satisfy a filter. |


## categories_category_id_get

> <CategoryDetails> categories_category_id_get(category_id, opts)

Get the category details for a category ID.

The `/categories/{categoryId}` request returns all the groups to which the category belongs. You must supply a `category ID` to use this request.  **Note**: Query parameters are case-sensitive. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (X-Esri-Authorization: Bearer <YOUR_TOKEN>): ArcGISXEsriAuthorizationHeader
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization (Authorization: Bearer <YOUR_TOKEN>): ArcGISAuthorizationHeader
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: ArcGISTokenParameter
  config.api_key['ArcGISTokenParameter'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ArcGISTokenParameter'] = 'Bearer'
end

api_instance = OpenapiClient::CategoriesApi.new
category_id = '17117' # String | The ID of the category that you want to fetch details for.  For example, using a category ID of `13035` would fetch details about the \"Coffee Shop\" category. 
opts = {
  f: 'json', # String | The requested response format - either `json` or `pjson` (pretty json). 
  token: 'token_example' # String | The authentication token with the `premium:user:places` [privilege](https://developers.arcgis.com/rest/users-groups-and-items/privileges.htm), used to access the Places service.  The `token` parameter can be either an API Key or short-lived token. See [ArcGIS security documentation](https://developers.arcgis.com/documentation/mapping-apis-and-services/security/) for more information on authenticating with a token or API key.  Alternatively, you can supply a token in the request header with one of the following keys using the \"Bearer\" scheme:  - `Authorization: Bearer <YOUR_TOKEN>` - `X-Esri-Authorization: Bearer <YOUR_TOKEN>` 
}

begin
  # Get the category details for a category ID.
  result = api_instance.categories_category_id_get(category_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CategoriesApi->categories_category_id_get: #{e}"
end
```

#### Using the categories_category_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoryDetails>, Integer, Hash)> categories_category_id_get_with_http_info(category_id, opts)

```ruby
begin
  # Get the category details for a category ID.
  data, status_code, headers = api_instance.categories_category_id_get_with_http_info(category_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoryDetails>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CategoriesApi->categories_category_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | The ID of the category that you want to fetch details for.  For example, using a category ID of &#x60;13035&#x60; would fetch details about the \&quot;Coffee Shop\&quot; category.  |  |
| **f** | **String** | The requested response format - either &#x60;json&#x60; or &#x60;pjson&#x60; (pretty json).  | [optional][default to &#39;json&#39;] |
| **token** | **String** | The authentication token with the &#x60;premium:user:places&#x60; [privilege](https://developers.arcgis.com/rest/users-groups-and-items/privileges.htm), used to access the Places service.  The &#x60;token&#x60; parameter can be either an API Key or short-lived token. See [ArcGIS security documentation](https://developers.arcgis.com/documentation/mapping-apis-and-services/security/) for more information on authenticating with a token or API key.  Alternatively, you can supply a token in the request header with one of the following keys using the \&quot;Bearer\&quot; scheme:  - &#x60;Authorization: Bearer &lt;YOUR_TOKEN&gt;&#x60; - &#x60;X-Esri-Authorization: Bearer &lt;YOUR_TOKEN&gt;&#x60;  | [optional] |

### Return type

[**CategoryDetails**](CategoryDetails.md)

### Authorization

[ArcGISXEsriAuthorizationHeader](../README.md#ArcGISXEsriAuthorizationHeader), [ArcGISAuthorizationHeader](../README.md#ArcGISAuthorizationHeader), [ArcGISTokenParameter](../README.md#ArcGISTokenParameter)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## categories_get

> <CategoriesGet200Response> categories_get(opts)

Return the name and category ID of all categories, or categories which satisfy a filter.

A category describes a type of place, such as \"movie theater\" or \"zoo\".  The places service has over 1,000 categories (or types) of place. The  categories fall into ten general groups: Arts and Entertainment, Business  and Professional Services, Community and Government, Dining and Drinking,  Events, Health and Medicine, Landmarks and Outdoors, Retail, Sports and  Recreation, and Travel and Transportation.  The categories are organized into a hierarchical system where a general category contains many more detailed variations on the parent category. For example: \"Travel and Transportation\" (Level 1), \"Transport Hub\" (Level 2), \"Airport\" (Level  3) and \"Airport Terminal\" (Level 4). The hierarchy has up to 5 levels of categories.  The table below shows the top-level of categories, along with a selection of level two categories.  The `/categories` endpoint fetches the latest set of place categories. The request returns all categories including their label and `categoryId`. You should use this endpoint to fetch the latest set of categories when your app starts up. Each category contains an unique ID that you can use to perform a `near-point` or `within-extent` search.  You can also reduce the list to a subset of categories using the `filter` parameter. For example, searching for \"coffee\" would return categories including:  - \"Coffee Shop\"  - \"Coffee Roaster\"  - \"Turkish Coffeehouse\"  |Category Label | Category ID | Level 2| |--- | --- | ---| |Arts and Entertainment | 10000 | Amusement Park (10001), Art Gallery (10004), Casino (10008), Exhibit (10016), Movie Theater (10024), Museum (10027), Stadium (10051), Water Park (10055), Zoo (10056), ...| |Business and Professional Services | 11000 | Construction (11028), Convention Center (11029), Food and Beverage Service (11056), Health and Beauty Service (11061), Industrial Estate (11106), Office (11124), ...| |Community and Government | 12000 | Education (12009), Organization (12082), Government Building (12064), Community Center (12004), Library (12080), Utility Company (12115), ...| |Dining and Drinking | 13000 | Bakery (13002), Bar (13003), Cafe, Coffee, and Tea House (13032), Restaurant (13065, ...| |Event | 14000 |  Conference (14001), Convention (14002), Entertainment Event (14003), Marketplace (14009), ...| |Health and Medicine | 15000 | Dentist (15007), Emergency Service (15008), Hospital (15014), Medical Center (15016), Optometrist (15024), Physician (15027), Veterinarian (15054), ...| |Landmarks and Outdoors | 16000 | Beach (16003), Structure (16007), Campground (16008), Harbor or Marina (16018), Historic and Protected Site (16020), Monument (16026), Nature Preserve (16028), Park (16032), ...| |Retail | 17000 | Arts and Crafts Store (17003), Bookstore (17018), Convenience Store (17029), Department Store (17033)| |Sports and Recreation | 18000 | Athletic Field (18001), Baseball (18002), Basketball (18006), Football (18013), Golf (18016), Gym and Studio (18021), ...| |Travel and Transportation | 19000 | Bike Rental (19002), Cruise (19005), Electric Vehicle Charging Station (19006), Fuel Station (19007), Lodging (19009), Transport Hub (19030), ...|  **Note**: Category details are subject to change as new types of places are introduced.  **Note**: Query parameters are case-sensitive. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (X-Esri-Authorization: Bearer <YOUR_TOKEN>): ArcGISXEsriAuthorizationHeader
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure Bearer authorization (Authorization: Bearer <YOUR_TOKEN>): ArcGISAuthorizationHeader
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: ArcGISTokenParameter
  config.api_key['ArcGISTokenParameter'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ArcGISTokenParameter'] = 'Bearer'
end

api_instance = OpenapiClient::CategoriesApi.new
opts = {
  filter: 'Coffee', # String | A text filter that will be used for searching categories.   The text must be at least three characters and will be applied as a partial match. For example, using the filter \"off\" would return categories using the word \"Office\" as well as those using the word \"Coffee\". 
  f: 'json', # String | The requested response format - either `json` or `pjson` (pretty json). 
  token: 'token_example' # String | The authentication token with the `premium:user:places` [privilege](https://developers.arcgis.com/rest/users-groups-and-items/privileges.htm), used to access the Places service.  The `token` parameter can be either an API Key or short-lived token. See [ArcGIS security documentation](https://developers.arcgis.com/documentation/mapping-apis-and-services/security/) for more information on authenticating with a token or API key.  Alternatively, you can supply a token in the request header with one of the following keys using the \"Bearer\" scheme:  - `Authorization: Bearer <YOUR_TOKEN>` - `X-Esri-Authorization: Bearer <YOUR_TOKEN>` 
}

begin
  # Return the name and category ID of all categories, or categories which satisfy a filter.
  result = api_instance.categories_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CategoriesApi->categories_get: #{e}"
end
```

#### Using the categories_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CategoriesGet200Response>, Integer, Hash)> categories_get_with_http_info(opts)

```ruby
begin
  # Return the name and category ID of all categories, or categories which satisfy a filter.
  data, status_code, headers = api_instance.categories_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CategoriesGet200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CategoriesApi->categories_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | **String** | A text filter that will be used for searching categories.   The text must be at least three characters and will be applied as a partial match. For example, using the filter \&quot;off\&quot; would return categories using the word \&quot;Office\&quot; as well as those using the word \&quot;Coffee\&quot;.  | [optional] |
| **f** | **String** | The requested response format - either &#x60;json&#x60; or &#x60;pjson&#x60; (pretty json).  | [optional][default to &#39;json&#39;] |
| **token** | **String** | The authentication token with the &#x60;premium:user:places&#x60; [privilege](https://developers.arcgis.com/rest/users-groups-and-items/privileges.htm), used to access the Places service.  The &#x60;token&#x60; parameter can be either an API Key or short-lived token. See [ArcGIS security documentation](https://developers.arcgis.com/documentation/mapping-apis-and-services/security/) for more information on authenticating with a token or API key.  Alternatively, you can supply a token in the request header with one of the following keys using the \&quot;Bearer\&quot; scheme:  - &#x60;Authorization: Bearer &lt;YOUR_TOKEN&gt;&#x60; - &#x60;X-Esri-Authorization: Bearer &lt;YOUR_TOKEN&gt;&#x60;  | [optional] |

### Return type

[**CategoriesGet200Response**](CategoriesGet200Response.md)

### Authorization

[ArcGISXEsriAuthorizationHeader](../README.md#ArcGISXEsriAuthorizationHeader), [ArcGISAuthorizationHeader](../README.md#ArcGISAuthorizationHeader), [ArcGISTokenParameter](../README.md#ArcGISTokenParameter)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

