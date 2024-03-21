=begin
#ArcGIS places service

## ArcGIS places service  The places service can search for businesses, points of interest (POI), and popular geographic features near a location or within a bounding box.  You can use the service to:  * Find and display places on a map.  * Search for places by text and/or categories such as restaurants, gas stations, or schools.  * Find places near a location and display information such as place name, description, address, user ratings, store hours, and contact information.  * Find places within a bounding box (extent).  * Search for over 1,000 categories using the API or the [category browser](https://developers.arcgis.com/documentation/mapping-apis-and-services/places/places-category-finder/).   **Additional documentation**: To access the service with different client APIs, go to [Places](https://developers.arcgis.com/documentation/mapping-apis-and-services/places/) in the _Mapping APIs and location services_ guide.  ## Supported Operations  ### /categories  The `places/categories` endpoint returns the full list of categories supported by the service. There are over 1000 categories organized into a hierarchy. For example, a place that is in the category of \"French Restaurant\", can also be found through the parent category \"Restaurant\", which is also included in \"Dining and Drinking\".   If you want to view a specific subset of categories, you can supply a filter parameter to return a reduced list of categories which match your filter.  ### /categories/{categoryId}  The `/categories/{categoryId}` endpoint looks up details of a specific category using its ID and returns all the categories to which it belongs and the parent category ID.  ### places/near-point  The `places/near-point` endpoint returns places that are within a search distance of a geographic point. You can also supply additional search criteria, including:  - Search text, such as the place name, or partial name.   - The categories of places (for example, coffee shops or museums).  ### places/within-extent  The `places/within-extent` endpoint returns candidate places that are within an extent (or bounding box). You can also supply additional search criteria, including:  - Search text, such as the place name, or partial name.   - The categories of places (for example, coffee shops or museums).  ### places/{placeId} The `places/{placeId}` endpoint returns detailed information about a given place, including:  - Contact information.  - Address.  - Opening hours.  - Overall price.  - User rating.  ## Workflows  ### Local search In a local search application, follow these steps:  1. Make a `places/categories` request to get information about all available categories.  2. Let users select the categories they want. You will need the category Ids when searching for places. For example, if the target category is \"Bicycle Store\", the category Id is `17119`. Note that if you already know the category Id you are interested in, you can skip steps 1 and 2.  3. Pass the user's search location and a search distance, along with optional search criteria such as category, to `places/near-point` endpoint.  4. Present the user with the filtered places and let them choose those they want to see in more detail. You will need the `placeId` to fetch additional details.  5. Pass the `placeId` to `places/{placeId}` endpoint to get details for a specific place.   ## Units  - Geographic coordinates are in WGS84 decimal degrees, x is a longitude and y is a latitude. - Distances are in meters. 

The version of the OpenAPI document: 1.1.6

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::Category
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenapiClient::Category do
  let(:instance) { OpenapiClient::Category.new }

  describe 'test an instance of Category' do
    it 'should create an instance of Category' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenapiClient::Category)
    end
  end

  describe 'test attribute "category_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "label"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
