# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents impact of an operation, both in absolute and relative terms.
    #
    class OperationImpact

      include MsRestAzure

      # @return [String] The name of the impact dimension.
      attr_accessor :name

      # @return [String] The unit in which estimated impact to dimension is
      # measured.
      attr_accessor :unit

      # @return [Float] The absolute impact to dimension.
      attr_accessor :change_value_absolute

      # @return [Float] The relative impact to dimension (null if not
      # applicable)
      attr_accessor :change_value_relative


      #
      # Mapper for OperationImpact class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationImpact',
          type: {
            name: 'Composite',
            class_name: 'OperationImpact',
            model_properties: {
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              unit: {
                required: false,
                read_only: true,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              change_value_absolute: {
                required: false,
                read_only: true,
                serialized_name: 'changeValueAbsolute',
                type: {
                  name: 'Double'
                }
              },
              change_value_relative: {
                required: false,
                read_only: true,
                serialized_name: 'changeValueRelative',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
