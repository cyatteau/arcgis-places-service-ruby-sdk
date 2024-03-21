# OpenapiClient::PlacesApi

All URIs are relative to *https://places-api.arcgis.com/arcgis/rest/services/places-service/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**near_point_get**](PlacesApi.md#near_point_get) | **GET** /places/near-point | Search for places near a point or location by radius. |
| [**place_id_get**](PlacesApi.md#place_id_get) | **GET** /places/{placeId} | Get place details including name, address, description, and other attributes. |
| [**within_extent_get**](PlacesApi.md#within_extent_get) | **GET** /places/within-extent | Search for places within an extent (bounding box). |


## near_point_get

> <NearPointGet200Response> near_point_get(x, y, opts)

Search for places near a point or location by radius.

The `/places/near-point` request finds places that are within a given radius of a specified location. The returned places contain basic data such as name, category and location.  To perform the request, you must supply the `x` and `y` coordinates of the point from which to search. Optionally, you can also specify the:   - Search radius (up to 10,000 meters)  - Category IDs  - Search text  If the `pagination.nextUrl` property in the response is populated, then you can page through the results to return more places. The maximum number of places that can be paged to is 200.  **Note**: You cannot permanently store places. Please see the [Terms of use](https://developers.arcgis.com/documentation/mapping-apis-and-services/deployment/terms-of-use/).  **Note**: Query parameters are case-sensitive. 

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

api_instance = OpenapiClient::PlacesApi.new
x = -117.205 # Float | The x coordinate, or longitude, to search from, in WGS84 decimal degrees.
y = 34.056 # Float | The y coordinate, or latitude, to search from, in WGS84 decimal degrees.
opts = {
  radius: 50, # Float | The radius in meters to search for places - measured from the supplied `x` and `y` coordinate.   A radius of 100 meters will result in a circular search area that is 200 meters in diameter. If omitted, the default search radius will be 1,000 meters. 
  category_ids: ['17119'], # Array<String> | Filters places to those that match the category Ids.   Places will be returned if they match _any_ of the category Ids. If this property is not set, places will be returned regardless of their category.  You can obtain information on category Ids from the `places/categories` endpoint. For example, to filter for places where the category is \"Bicycle Store\", include the categoryId `17117` in this property.  You can search up to a maximum of `10` category Ids. 
  search_text: 'Coff', # String | Free search text for places against names, categories etc. 
  page_size: 10, # Integer | The number of places that should be sent in the response for a single request.   You can set this to any value up to `20` when you need to control the size of responses that your app downloads.  If the query results in more than this page size, then the response object will contain a `pagination.nextUrl`. This can be used to request the next page of results.  Regardless of paging, the maximum number of places that can be returned in total is `200`.  The default `pageSize` is 10. 
  offset: 10, # Integer | Request results starting from the given offset.   This parameter works with the `pageSize` parameter to fetch results from subsequent pages. For example, with a page size of 2, setting the `offset` to `2` would return the 3rd and 4th results.  Regardless of paging, the maximum number of places that can be returned in total is `200`. 
  f: 'json', # String | The requested response format - either `json` or `pjson` (pretty json). 
  token: 'token_example' # String | The authentication token with the `premium:user:places` [privilege](https://developers.arcgis.com/rest/users-groups-and-items/privileges.htm), used to access the Places service.  The `token` parameter can be either an API Key or short-lived token. See [ArcGIS security documentation](https://developers.arcgis.com/documentation/mapping-apis-and-services/security/) for more information on authenticating with a token or API key.  Alternatively, you can supply a token in the request header with one of the following keys using the \"Bearer\" scheme:  - `Authorization: Bearer <YOUR_TOKEN>` - `X-Esri-Authorization: Bearer <YOUR_TOKEN>` 
}

begin
  # Search for places near a point or location by radius.
  result = api_instance.near_point_get(x, y, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PlacesApi->near_point_get: #{e}"
end
```

#### Using the near_point_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NearPointGet200Response>, Integer, Hash)> near_point_get_with_http_info(x, y, opts)

```ruby
begin
  # Search for places near a point or location by radius.
  data, status_code, headers = api_instance.near_point_get_with_http_info(x, y, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NearPointGet200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PlacesApi->near_point_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x** | **Float** | The x coordinate, or longitude, to search from, in WGS84 decimal degrees. |  |
| **y** | **Float** | The y coordinate, or latitude, to search from, in WGS84 decimal degrees. |  |
| **radius** | **Float** | The radius in meters to search for places - measured from the supplied &#x60;x&#x60; and &#x60;y&#x60; coordinate.   A radius of 100 meters will result in a circular search area that is 200 meters in diameter. If omitted, the default search radius will be 1,000 meters.  | [optional][default to 1000] |
| **category_ids** | [**Array&lt;String&gt;**](String.md) | Filters places to those that match the category Ids.   Places will be returned if they match _any_ of the category Ids. If this property is not set, places will be returned regardless of their category.  You can obtain information on category Ids from the &#x60;places/categories&#x60; endpoint. For example, to filter for places where the category is \&quot;Bicycle Store\&quot;, include the categoryId &#x60;17117&#x60; in this property.  You can search up to a maximum of &#x60;10&#x60; category Ids.  | [optional] |
| **search_text** | **String** | Free search text for places against names, categories etc.  | [optional] |
| **page_size** | **Integer** | The number of places that should be sent in the response for a single request.   You can set this to any value up to &#x60;20&#x60; when you need to control the size of responses that your app downloads.  If the query results in more than this page size, then the response object will contain a &#x60;pagination.nextUrl&#x60;. This can be used to request the next page of results.  Regardless of paging, the maximum number of places that can be returned in total is &#x60;200&#x60;.  The default &#x60;pageSize&#x60; is 10.  | [optional][default to 10] |
| **offset** | **Integer** | Request results starting from the given offset.   This parameter works with the &#x60;pageSize&#x60; parameter to fetch results from subsequent pages. For example, with a page size of 2, setting the &#x60;offset&#x60; to &#x60;2&#x60; would return the 3rd and 4th results.  Regardless of paging, the maximum number of places that can be returned in total is &#x60;200&#x60;.  | [optional][default to 0] |
| **f** | **String** | The requested response format - either &#x60;json&#x60; or &#x60;pjson&#x60; (pretty json).  | [optional][default to &#39;json&#39;] |
| **token** | **String** | The authentication token with the &#x60;premium:user:places&#x60; [privilege](https://developers.arcgis.com/rest/users-groups-and-items/privileges.htm), used to access the Places service.  The &#x60;token&#x60; parameter can be either an API Key or short-lived token. See [ArcGIS security documentation](https://developers.arcgis.com/documentation/mapping-apis-and-services/security/) for more information on authenticating with a token or API key.  Alternatively, you can supply a token in the request header with one of the following keys using the \&quot;Bearer\&quot; scheme:  - &#x60;Authorization: Bearer &lt;YOUR_TOKEN&gt;&#x60; - &#x60;X-Esri-Authorization: Bearer &lt;YOUR_TOKEN&gt;&#x60;  | [optional] |

### Return type

[**NearPointGet200Response**](NearPointGet200Response.md)

### Authorization

[ArcGISXEsriAuthorizationHeader](../README.md#ArcGISXEsriAuthorizationHeader), [ArcGISAuthorizationHeader](../README.md#ArcGISAuthorizationHeader), [ArcGISTokenParameter](../README.md#ArcGISTokenParameter)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## place_id_get

> <PlaceIdGet200Response> place_id_get(place_id, requested_fields, opts)

Get place details including name, address, description, and other attributes.

The `/places/{placeId}` request returns details for a place.   To request details, you use the `requestedFields` parameter to specify the fields and the attributes you want from the **Place**, **Address**, **Details** and/or **Location** price groups.   It is always recommended to specify the fields you want, however, you can also use `requestedFields=all` to return all of the attributes available. By default, The `placeId` attribute is always returned in addition to the other attributes you requested.  The attributes available for places may vary. For example, opening hours may not be available (or applicable) for geographic places or landmarks.   You will only be charged for attributes that contain valid values for the requested fields. If no data is available for the requested field, `null` or an empty collection  is returned and you are not charged. You are only charged once if one or more attributes with valid values are returned from a price group. To learn more, go to [Pricing](https://developers.arcgis.com/pricing/).   Field | Price group --- | --- additionalLocations:dropOff | Location additionalLocations:frontDoor | Location additionalLocations:road | Location additionalLocations:roof | Location address:adminRegion | Address address:censusBlockId | Address address:country | Address address:designatedMarketArea | Address address:extended | Address address:locality | Address address:neighborhood | Address address:poBox | Address address:postcode | Address address:postTown | Address address:region | Address address:streetAddress | Address categories | Place chains | Details contactInfo:email | Details contactInfo:fax | Details contactInfo:telephone | Details contactInfo:website | Details description | Details hours:opening | Details hours:openingText | Details hours:popular | Details location | Location name | Place rating:price | Details rating:user | Details socialMedia:facebookId | Details socialMedia:instagram | Details socialMedia:twitter | Details  **Note**: You cannot permanently store places. Please see the [Terms of use](https://developers.arcgis.com/documentation/mapping-apis-and-services/deployment/terms-of-use/).  **Note**: Query parameters are case-sensitive.  **Note**: Can be used in conjunction with the [Basemap Styles V2 service](https://developers.arcgis.com/rest/basemap-styles) to request additional attributes for places retrieved using the [Places for basemaps](https://developers.arcgis.com/documentation/mapping-apis-and-services/maps/places-for-basemaps) workflow. 

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

api_instance = OpenapiClient::PlacesApi.new
place_id = '2da082218b6f7538e52250999c8f8ef1' # String | The Id of the place for which you want to fetch additional details.
requested_fields = ['all'] # Array<String> | The array of fields that define the attributes to return for a place.  Use this parameter to define the attributes you would like returned, for example `requestedFields=name,address:streetAddress`. However, you can also set this value to `requestedFields=all` to return all of the attributes available for a place.   The `placeId` attribute is always returned in addition to the other attributes you requested. If a valid attribute value is not available, `null`, or an empty collection, is returned and you are not charged for it. To see the fields and pricing groups they belong to, go to the table above. 
opts = {
  f: 'json', # String | The requested response format - either `json` or `pjson` (pretty json). 
  token: 'token_example' # String | The authentication token with the `premium:user:places` [privilege](https://developers.arcgis.com/rest/users-groups-and-items/privileges.htm), used to access the Places service.  The `token` parameter can be either an API Key or short-lived token. See [ArcGIS security documentation](https://developers.arcgis.com/documentation/mapping-apis-and-services/security/) for more information on authenticating with a token or API key.  Alternatively, you can supply a token in the request header with one of the following keys using the \"Bearer\" scheme:  - `Authorization: Bearer <YOUR_TOKEN>` - `X-Esri-Authorization: Bearer <YOUR_TOKEN>` 
}

begin
  # Get place details including name, address, description, and other attributes.
  result = api_instance.place_id_get(place_id, requested_fields, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PlacesApi->place_id_get: #{e}"
end
```

#### Using the place_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlaceIdGet200Response>, Integer, Hash)> place_id_get_with_http_info(place_id, requested_fields, opts)

```ruby
begin
  # Get place details including name, address, description, and other attributes.
  data, status_code, headers = api_instance.place_id_get_with_http_info(place_id, requested_fields, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlaceIdGet200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PlacesApi->place_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **place_id** | **String** | The Id of the place for which you want to fetch additional details. |  |
| **requested_fields** | [**Array&lt;String&gt;**](String.md) | The array of fields that define the attributes to return for a place.  Use this parameter to define the attributes you would like returned, for example &#x60;requestedFields&#x3D;name,address:streetAddress&#x60;. However, you can also set this value to &#x60;requestedFields&#x3D;all&#x60; to return all of the attributes available for a place.   The &#x60;placeId&#x60; attribute is always returned in addition to the other attributes you requested. If a valid attribute value is not available, &#x60;null&#x60;, or an empty collection, is returned and you are not charged for it. To see the fields and pricing groups they belong to, go to the table above.  |  |
| **f** | **String** | The requested response format - either &#x60;json&#x60; or &#x60;pjson&#x60; (pretty json).  | [optional][default to &#39;json&#39;] |
| **token** | **String** | The authentication token with the &#x60;premium:user:places&#x60; [privilege](https://developers.arcgis.com/rest/users-groups-and-items/privileges.htm), used to access the Places service.  The &#x60;token&#x60; parameter can be either an API Key or short-lived token. See [ArcGIS security documentation](https://developers.arcgis.com/documentation/mapping-apis-and-services/security/) for more information on authenticating with a token or API key.  Alternatively, you can supply a token in the request header with one of the following keys using the \&quot;Bearer\&quot; scheme:  - &#x60;Authorization: Bearer &lt;YOUR_TOKEN&gt;&#x60; - &#x60;X-Esri-Authorization: Bearer &lt;YOUR_TOKEN&gt;&#x60;  | [optional] |

### Return type

[**PlaceIdGet200Response**](PlaceIdGet200Response.md)

### Authorization

[ArcGISXEsriAuthorizationHeader](../README.md#ArcGISXEsriAuthorizationHeader), [ArcGISAuthorizationHeader](../README.md#ArcGISAuthorizationHeader), [ArcGISTokenParameter](../README.md#ArcGISTokenParameter)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## within_extent_get

> <WithinExtentGet200Response> within_extent_get(xmin, ymin, xmax, ymax, opts)

Search for places within an extent (bounding box).

The `/places/within-extent` request searches for places within an extent (bounding box).    You must supply the `xmin`, `ymin`, `xmax` and `ymax` coordinates to define the extent. The maximum width and height of an extent that can be used in a search is 20,000 meters.  You can also provide multiple categories or search text to find specific types of places within the extent.  The default number of places returned (`pageSize`) is 10. The maximum `pageSize` value is 20.   If the `pagination.nextUrl` property in the response is populated, then you can page through the results to return more places. The maximum number of places that can be paged to is 200.  **Note**: You cannot permanently store places. Please see the [Terms of use](https://developers.arcgis.com/documentation/mapping-apis-and-services/deployment/terms-of-use/).  **Note**: Query parameters are case-sensitive. 

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

api_instance = OpenapiClient::PlacesApi.new
xmin = -73.982 # Float | The minimum x coordinate, or longitude, of the search extent.   This is the furthest _west_ that will be searched. 
ymin = 40.764 # Float | The minimum y coordinate, or latitude, of the search extent.   This is the furthest _south_ that will be searched. 
xmax = -73.949 # Float | The maximum x coordinate, or longitude, of the search extent.   This is the furthest _east_ that will be searched. 
ymax = 40.801 # Float | The maximum y coordinate, or latitude, of the search extent.   This is the furthest _north_ that will be searched. 
opts = {
  category_ids: ['17119'], # Array<String> | Filters places to those that match the category Ids.   Places will be returned if they match _any_ of the category Ids. If this property is not set, places will be returned regardless of their category.  You can obtain information on category Ids from the `places/categories` endpoint. For example, to filter for places where the category is \"Bicycle Store\", include the categoryId `17117` in this property.  You can search up to a maximum of `10` category Ids. 
  search_text: 'Coff', # String | Free search text for places against names, categories etc. 
  page_size: 10, # Integer | The number of places that should be sent in the response for a single request.   You can set this to any value up to `20` when you need to control the size of responses that your app downloads.  If the query results in more than this page size, then the response object will contain a `pagination.nextUrl`. This can be used to request the next page of results.  Regardless of paging, the maximum number of places that can be returned in total is `200`.  The default `pageSize` is 10. 
  offset: 10, # Integer | Request results starting from the given offset.   This parameter works with the `pageSize` parameter to fetch results from subsequent pages. For example, with a page size of 2, setting the `offset` to `2` would return the 3rd and 4th results.  Regardless of paging, the maximum number of places that can be returned in total is `200`. 
  f: 'json', # String | The requested response format - either `json` or `pjson` (pretty json). 
  token: 'token_example' # String | The authentication token with the `premium:user:places` [privilege](https://developers.arcgis.com/rest/users-groups-and-items/privileges.htm), used to access the Places service.  The `token` parameter can be either an API Key or short-lived token. See [ArcGIS security documentation](https://developers.arcgis.com/documentation/mapping-apis-and-services/security/) for more information on authenticating with a token or API key.  Alternatively, you can supply a token in the request header with one of the following keys using the \"Bearer\" scheme:  - `Authorization: Bearer <YOUR_TOKEN>` - `X-Esri-Authorization: Bearer <YOUR_TOKEN>` 
}

begin
  # Search for places within an extent (bounding box).
  result = api_instance.within_extent_get(xmin, ymin, xmax, ymax, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PlacesApi->within_extent_get: #{e}"
end
```

#### Using the within_extent_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WithinExtentGet200Response>, Integer, Hash)> within_extent_get_with_http_info(xmin, ymin, xmax, ymax, opts)

```ruby
begin
  # Search for places within an extent (bounding box).
  data, status_code, headers = api_instance.within_extent_get_with_http_info(xmin, ymin, xmax, ymax, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WithinExtentGet200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PlacesApi->within_extent_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **xmin** | **Float** | The minimum x coordinate, or longitude, of the search extent.   This is the furthest _west_ that will be searched.  |  |
| **ymin** | **Float** | The minimum y coordinate, or latitude, of the search extent.   This is the furthest _south_ that will be searched.  |  |
| **xmax** | **Float** | The maximum x coordinate, or longitude, of the search extent.   This is the furthest _east_ that will be searched.  |  |
| **ymax** | **Float** | The maximum y coordinate, or latitude, of the search extent.   This is the furthest _north_ that will be searched.  |  |
| **category_ids** | [**Array&lt;String&gt;**](String.md) | Filters places to those that match the category Ids.   Places will be returned if they match _any_ of the category Ids. If this property is not set, places will be returned regardless of their category.  You can obtain information on category Ids from the &#x60;places/categories&#x60; endpoint. For example, to filter for places where the category is \&quot;Bicycle Store\&quot;, include the categoryId &#x60;17117&#x60; in this property.  You can search up to a maximum of &#x60;10&#x60; category Ids.  | [optional] |
| **search_text** | **String** | Free search text for places against names, categories etc.  | [optional] |
| **page_size** | **Integer** | The number of places that should be sent in the response for a single request.   You can set this to any value up to &#x60;20&#x60; when you need to control the size of responses that your app downloads.  If the query results in more than this page size, then the response object will contain a &#x60;pagination.nextUrl&#x60;. This can be used to request the next page of results.  Regardless of paging, the maximum number of places that can be returned in total is &#x60;200&#x60;.  The default &#x60;pageSize&#x60; is 10.  | [optional][default to 10] |
| **offset** | **Integer** | Request results starting from the given offset.   This parameter works with the &#x60;pageSize&#x60; parameter to fetch results from subsequent pages. For example, with a page size of 2, setting the &#x60;offset&#x60; to &#x60;2&#x60; would return the 3rd and 4th results.  Regardless of paging, the maximum number of places that can be returned in total is &#x60;200&#x60;.  | [optional][default to 0] |
| **f** | **String** | The requested response format - either &#x60;json&#x60; or &#x60;pjson&#x60; (pretty json).  | [optional][default to &#39;json&#39;] |
| **token** | **String** | The authentication token with the &#x60;premium:user:places&#x60; [privilege](https://developers.arcgis.com/rest/users-groups-and-items/privileges.htm), used to access the Places service.  The &#x60;token&#x60; parameter can be either an API Key or short-lived token. See [ArcGIS security documentation](https://developers.arcgis.com/documentation/mapping-apis-and-services/security/) for more information on authenticating with a token or API key.  Alternatively, you can supply a token in the request header with one of the following keys using the \&quot;Bearer\&quot; scheme:  - &#x60;Authorization: Bearer &lt;YOUR_TOKEN&gt;&#x60; - &#x60;X-Esri-Authorization: Bearer &lt;YOUR_TOKEN&gt;&#x60;  | [optional] |

### Return type

[**WithinExtentGet200Response**](WithinExtentGet200Response.md)

### Authorization

[ArcGISXEsriAuthorizationHeader](../README.md#ArcGISXEsriAuthorizationHeader), [ArcGISAuthorizationHeader](../README.md#ArcGISAuthorizationHeader), [ArcGISTokenParameter](../README.md#ArcGISTokenParameter)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

