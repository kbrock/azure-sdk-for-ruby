# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2019_07_01_preview
  module Models
    #
    # Range of route errors
    #
    class RouteErrorRange

      include MsRestAzure

      # @return [RouteErrorPosition] Start where the route error happened
      attr_accessor :start

      # @return [RouteErrorPosition] End where the route error happened
      attr_accessor :end_property


      #
      # Mapper for RouteErrorRange class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RouteErrorRange',
          type: {
            name: 'Composite',
            class_name: 'RouteErrorRange',
            model_properties: {
              start: {
                client_side_validation: true,
                required: false,
                serialized_name: 'start',
                type: {
                  name: 'Composite',
                  class_name: 'RouteErrorPosition'
                }
              },
              end_property: {
                client_side_validation: true,
                required: false,
                serialized_name: 'end',
                type: {
                  name: 'Composite',
                  class_name: 'RouteErrorPosition'
                }
              }
            }
          }
        }
      end
    end
  end
end
