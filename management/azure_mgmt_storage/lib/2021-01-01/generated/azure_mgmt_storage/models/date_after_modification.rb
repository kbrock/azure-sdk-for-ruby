# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2021_01_01
  module Models
    #
    # Object to define the number of days after object last modification Or
    # last access. Properties daysAfterModificationGreaterThan and
    # daysAfterLastAccessTimeGreaterThan are mutually exclusive.
    #
    class DateAfterModification

      include MsRestAzure

      # @return [Float] Value indicating the age in days after last
      # modification
      attr_accessor :days_after_modification_greater_than

      # @return [Float] Value indicating the age in days after last blob
      # access. This property can only be used in conjunction with last access
      # time tracking policy
      attr_accessor :days_after_last_access_time_greater_than


      #
      # Mapper for DateAfterModification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DateAfterModification',
          type: {
            name: 'Composite',
            class_name: 'DateAfterModification',
            model_properties: {
              days_after_modification_greater_than: {
                client_side_validation: true,
                required: false,
                serialized_name: 'daysAfterModificationGreaterThan',
                constraints: {
                  InclusiveMinimum: 0,
                  MultipleOf: 1
                },
                type: {
                  name: 'Double'
                }
              },
              days_after_last_access_time_greater_than: {
                client_side_validation: true,
                required: false,
                serialized_name: 'daysAfterLastAccessTimeGreaterThan',
                constraints: {
                  InclusiveMinimum: 0,
                  MultipleOf: 1
                },
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
