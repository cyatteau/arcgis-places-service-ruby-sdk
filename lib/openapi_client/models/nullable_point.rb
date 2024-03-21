=begin
#ArcGIS places service

## ArcGIS places service  The places service can search for businesses, points of interest (POI), and popular geographic features near a location or within a bounding box.  You can use the service to:  * Find and display places on a map.  * Search for places by text and/or categories such as restaurants, gas stations, or schools.  * Find places near a location and display information such as place name, description, address, user ratings, store hours, and contact information.  * Find places within a bounding box (extent).  * Search for over 1,000 categories using the API or the [category browser](https://developers.arcgis.com/documentation/mapping-apis-and-services/places/places-category-finder/).   **Additional documentation**: To access the service with different client APIs, go to [Places](https://developers.arcgis.com/documentation/mapping-apis-and-services/places/) in the _Mapping APIs and location services_ guide.  ## Supported Operations  ### /categories  The `places/categories` endpoint returns the full list of categories supported by the service. There are over 1000 categories organized into a hierarchy. For example, a place that is in the category of \"French Restaurant\", can also be found through the parent category \"Restaurant\", which is also included in \"Dining and Drinking\".   If you want to view a specific subset of categories, you can supply a filter parameter to return a reduced list of categories which match your filter.  ### /categories/{categoryId}  The `/categories/{categoryId}` endpoint looks up details of a specific category using its ID and returns all the categories to which it belongs and the parent category ID.  ### places/near-point  The `places/near-point` endpoint returns places that are within a search distance of a geographic point. You can also supply additional search criteria, including:  - Search text, such as the place name, or partial name.   - The categories of places (for example, coffee shops or museums).  ### places/within-extent  The `places/within-extent` endpoint returns candidate places that are within an extent (or bounding box). You can also supply additional search criteria, including:  - Search text, such as the place name, or partial name.   - The categories of places (for example, coffee shops or museums).  ### places/{placeId} The `places/{placeId}` endpoint returns detailed information about a given place, including:  - Contact information.  - Address.  - Opening hours.  - Overall price.  - User rating.  ## Workflows  ### Local search In a local search application, follow these steps:  1. Make a `places/categories` request to get information about all available categories.  2. Let users select the categories they want. You will need the category Ids when searching for places. For example, if the target category is \"Bicycle Store\", the category Id is `17119`. Note that if you already know the category Id you are interested in, you can skip steps 1 and 2.  3. Pass the user's search location and a search distance, along with optional search criteria such as category, to `places/near-point` endpoint.  4. Present the user with the filtered places and let them choose those they want to see in more detail. You will need the `placeId` to fetch additional details.  5. Pass the `placeId` to `places/{placeId}` endpoint to get details for a specific place.   ## Units  - Geographic coordinates are in WGS84 decimal degrees, x is a longitude and y is a latitude. - Distances are in meters. 

The version of the OpenAPI document: 1.1.6

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'date'
require 'time'

module OpenapiClient
  # A point defined in WGS84 decimal degrees. 
  class NullablePoint
    # An x-coordinate, or longitude, in WGS84 decimal degrees.
    attr_accessor :x

    # A y-coordinate, or latitude, in WGS84 decimal degrees.
    attr_accessor :y

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'x' => :'x',
        :'y' => :'y'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'x' => :'Float',
        :'y' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::NullablePoint` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::NullablePoint`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'x')
        self.x = attributes[:'x']
      else
        self.x = nil
      end

      if attributes.key?(:'y')
        self.y = attributes[:'y']
      else
        self.y = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @x.nil?
        invalid_properties.push('invalid value for "x", x cannot be nil.')
      end

      if @x > 180.0
        invalid_properties.push('invalid value for "x", must be smaller than or equal to 180.0.')
      end

      if @x < -180.0
        invalid_properties.push('invalid value for "x", must be greater than or equal to -180.0.')
      end

      if @y.nil?
        invalid_properties.push('invalid value for "y", y cannot be nil.')
      end

      if @y > 90.0
        invalid_properties.push('invalid value for "y", must be smaller than or equal to 90.0.')
      end

      if @y < -90.0
        invalid_properties.push('invalid value for "y", must be greater than or equal to -90.0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @x.nil?
      return false if @x > 180.0
      return false if @x < -180.0
      return false if @y.nil?
      return false if @y > 90.0
      return false if @y < -90.0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] x Value to be assigned
    def x=(x)
      if x.nil?
        fail ArgumentError, 'x cannot be nil'
      end

      if x > 180.0
        fail ArgumentError, 'invalid value for "x", must be smaller than or equal to 180.0.'
      end

      if x < -180.0
        fail ArgumentError, 'invalid value for "x", must be greater than or equal to -180.0.'
      end

      @x = x
    end

    # Custom attribute writer method with validation
    # @param [Object] y Value to be assigned
    def y=(y)
      if y.nil?
        fail ArgumentError, 'y cannot be nil'
      end

      if y > 90.0
        fail ArgumentError, 'invalid value for "y", must be smaller than or equal to 90.0.'
      end

      if y < -90.0
        fail ArgumentError, 'invalid value for "y", must be greater than or equal to -90.0.'
      end

      @y = y
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          x == o.x &&
          y == o.y
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [x, y].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
