=begin
Copyright (c) 2019 Aspose Pty Ltd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
=end

require 'date'

module AsposeSlidesCloud
  # Specifies an instance of mathematical text that contained within a MathParagraph and starts on its own line.
  class PhantomElement < MathElement
    # Base element
    attr_accessor :base

    # true if the base element is displayed.
    attr_accessor :show

    # true if the the width of the base element should be treated as zero.
    attr_accessor :zero_width

    # true if the the ascent (height above baseline) of the base element should be treated as zero.
    attr_accessor :zero_asc

    # true if the the descent (depth below baseline) of the base element should be treated as zero.
    attr_accessor :zero_desc

    # true if operators and symbols inside the phantom still affect mathematical spacing around the phantom (as if visible).
    attr_accessor :transp

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      super.merge({
        :'base' => :'Base',
        :'show' => :'Show',
        :'zero_width' => :'ZeroWidth',
        :'zero_asc' => :'ZeroAsc',
        :'zero_desc' => :'ZeroDesc',
        :'transp' => :'Transp',
      })
    end

    # Attribute type mapping.
    def self.swagger_types
      super.merge({
        :'base' => :'MathElement',
        :'show' => :'BOOLEAN',
        :'zero_width' => :'BOOLEAN',
        :'zero_asc' => :'BOOLEAN',
        :'zero_desc' => :'BOOLEAN',
        :'transp' => :'BOOLEAN',
      })
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      super

      if attributes.has_key?(:'Base')
        self.base = attributes[:'Base']
      end

      if attributes.has_key?(:'Show')
        self.show = attributes[:'Show']
      end

      if attributes.has_key?(:'ZeroWidth')
        self.zero_width = attributes[:'ZeroWidth']
      end

      if attributes.has_key?(:'ZeroAsc')
        self.zero_asc = attributes[:'ZeroAsc']
      end

      if attributes.has_key?(:'ZeroDesc')
        self.zero_desc = attributes[:'ZeroDesc']
      end

      if attributes.has_key?(:'Transp')
        self.transp = attributes[:'Transp']
      end
      self.type = 'Phantom'
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !super
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          base == o.base &&
          show == o.show &&
          zero_width == o.zero_width &&
          zero_asc == o.zero_asc &&
          zero_desc == o.zero_desc &&
          transp == o.transp
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, base, show, zero_width, zero_asc, zero_desc, transp].hash
    end
  end
end
