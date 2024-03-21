require 'date'
require 'time'

module OpenapiClient
  class Category
    attr_accessor :category_id
    attr_accessor :label

    def self.attribute_map
      {
        :'category_id' => :'categoryId',
        :'label' => :'label'
      }
    end

    def self.acceptable_attributes
      attribute_map.values
    end

    def self.openapi_types
      {
        :'category_id' => :'String',
        :'label' => :'String'
      }
    end

    def self.openapi_nullable
      Set.new([])
    end

    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Category` initialize method"
      end

      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Category`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'category_id')
        self.category_id = attributes[:'category_id']
      else
        self.category_id = nil
      end

      if attributes.key?(:'label')
        self.label = attributes[:'label']
      else
        self.label = nil
      end
    end

    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @category_id.nil?
        invalid_properties.push('invalid value for "category_id", category_id cannot be nil.')
      end

      pattern = Regexp.new(/^\d{1,5}$/)
      if @category_id !~ pattern
        invalid_properties.push("invalid value for \"category_id\", must conform to the pattern #{pattern}.")
      end

      if @label.nil?
        invalid_properties.push('invalid value for "label", label cannot be nil.')
      end

      if @label.to_s.length < 1
        invalid_properties.push('invalid value for "label", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @category_id.nil?
      return false if @category_id !~ Regexp.new(/^\d{1,5}$/)
      return false if @label.nil?
      return false if @label.to_s.length < 1
      true
    end

    def category_id=(category_id)
      if category_id.nil?
        fail ArgumentError, 'category_id cannot be nil'
      end

      pattern = Regexp.new(/^\d{1,5}$/)
      if category_id !~ pattern
        fail ArgumentError, "invalid value for \"category_id\", must conform to the pattern #{pattern}."
      end

      @category_id = category_id
    end

    def label=(label)
      if label.nil?
        fail ArgumentError, 'label cannot be nil'
      end

      if label.to_s.length < 1
        fail ArgumentError, 'invalid value for "label", the character length must be great than or equal to 1.'
      end

      @label = label
    end

    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          category_id == o.category_id &&
          label == o.label
    end

    def eql?(o)
      self == o
    end

    def hash
      [category_id, label].hash
    end

    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

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
      else
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    def to_body
      to_hash
    end

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