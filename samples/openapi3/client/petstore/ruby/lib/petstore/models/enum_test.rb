=begin
#OpenAPI Petstore

#This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.0-SNAPSHOT

=end

require 'date'

module Petstore
  class EnumTest
    attr_accessor :enum_string

    attr_accessor :enum_string_required

    attr_accessor :enum_integer

    attr_accessor :enum_number

    attr_accessor :outer_enum

    attr_accessor :outer_enum_integer

    attr_accessor :outer_enum_default_value

    attr_accessor :outer_enum_integer_default_value

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'enum_string' => :'enum_string',
        :'enum_string_required' => :'enum_string_required',
        :'enum_integer' => :'enum_integer',
        :'enum_number' => :'enum_number',
        :'outer_enum' => :'outerEnum',
        :'outer_enum_integer' => :'outerEnumInteger',
        :'outer_enum_default_value' => :'outerEnumDefaultValue',
        :'outer_enum_integer_default_value' => :'outerEnumIntegerDefaultValue'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'enum_string' => :'String',
        :'enum_string_required' => :'String',
        :'enum_integer' => :'Integer',
        :'enum_number' => :'Float',
        :'outer_enum' => :'OuterEnum',
        :'outer_enum_integer' => :'OuterEnumInteger',
        :'outer_enum_default_value' => :'OuterEnumDefaultValue',
        :'outer_enum_integer_default_value' => :'OuterEnumIntegerDefaultValue'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Petstore::EnumTest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Petstore::EnumTest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'enum_string')
        self.enum_string = attributes[:'enum_string']
      end

      if attributes.key?(:'enum_string_required')
        self.enum_string_required = attributes[:'enum_string_required']
      end

      if attributes.key?(:'enum_integer')
        self.enum_integer = attributes[:'enum_integer']
      end

      if attributes.key?(:'enum_number')
        self.enum_number = attributes[:'enum_number']
      end

      if attributes.key?(:'outer_enum')
        self.outer_enum = attributes[:'outer_enum']
      end

      if attributes.key?(:'outer_enum_integer')
        self.outer_enum_integer = attributes[:'outer_enum_integer']
      end

      if attributes.key?(:'outer_enum_default_value')
        self.outer_enum_default_value = attributes[:'outer_enum_default_value']
      end

      if attributes.key?(:'outer_enum_integer_default_value')
        self.outer_enum_integer_default_value = attributes[:'outer_enum_integer_default_value']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @enum_string_required.nil?
        invalid_properties.push('invalid value for "enum_string_required", enum_string_required cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      enum_string_validator = EnumAttributeValidator.new('String', ["UPPER", "lower", ""])
      return false unless enum_string_validator.valid?(@enum_string)
      return false if @enum_string_required.nil?
      enum_string_required_validator = EnumAttributeValidator.new('String', ["UPPER", "lower", ""])
      return false unless enum_string_required_validator.valid?(@enum_string_required)
      enum_integer_validator = EnumAttributeValidator.new('Integer', [1, -1])
      return false unless enum_integer_validator.valid?(@enum_integer)
      enum_number_validator = EnumAttributeValidator.new('Float', [1.1, -1.2])
      return false unless enum_number_validator.valid?(@enum_number)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enum_string Object to be assigned
    def enum_string=(enum_string)
      validator = EnumAttributeValidator.new('String', ["UPPER", "lower", ""])
      unless validator.valid?(enum_string)
        fail ArgumentError, "invalid value for \"enum_string\", must be one of #{validator.allowable_values}."
      end
      @enum_string = enum_string
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enum_string_required Object to be assigned
    def enum_string_required=(enum_string_required)
      validator = EnumAttributeValidator.new('String', ["UPPER", "lower", ""])
      unless validator.valid?(enum_string_required)
        fail ArgumentError, "invalid value for \"enum_string_required\", must be one of #{validator.allowable_values}."
      end
      @enum_string_required = enum_string_required
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enum_integer Object to be assigned
    def enum_integer=(enum_integer)
      validator = EnumAttributeValidator.new('Integer', [1, -1])
      unless validator.valid?(enum_integer)
        fail ArgumentError, "invalid value for \"enum_integer\", must be one of #{validator.allowable_values}."
      end
      @enum_integer = enum_integer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enum_number Object to be assigned
    def enum_number=(enum_number)
      validator = EnumAttributeValidator.new('Float', [1.1, -1.2])
      unless validator.valid?(enum_number)
        fail ArgumentError, "invalid value for \"enum_number\", must be one of #{validator.allowable_values}."
      end
      @enum_number = enum_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          enum_string == o.enum_string &&
          enum_string_required == o.enum_string_required &&
          enum_integer == o.enum_integer &&
          enum_number == o.enum_number &&
          outer_enum == o.outer_enum &&
          outer_enum_integer == o.outer_enum_integer &&
          outer_enum_default_value == o.outer_enum_default_value &&
          outer_enum_integer_default_value == o.outer_enum_integer_default_value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [enum_string, enum_string_required, enum_integer, enum_number, outer_enum, outer_enum_integer, outer_enum_default_value, outer_enum_integer_default_value].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
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
        Petstore.const_get(type).build_from_hash(value)
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
        next if value.nil?
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
