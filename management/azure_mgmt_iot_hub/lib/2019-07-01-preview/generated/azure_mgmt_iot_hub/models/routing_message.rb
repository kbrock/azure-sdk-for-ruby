# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2019_07_01_preview
  module Models
    #
    # Routing message
    #
    class RoutingMessage

      include MsRestAzure

      # @return [String] Body of routing message
      attr_accessor :body

      # @return [Hash{String => String}] App properties
      attr_accessor :app_properties

      # @return [Hash{String => String}] System properties
      attr_accessor :system_properties


      #
      # Mapper for RoutingMessage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RoutingMessage',
          type: {
            name: 'Composite',
            class_name: 'RoutingMessage',
            model_properties: {
              body: {
                client_side_validation: true,
                required: false,
                serialized_name: 'body',
                type: {
                  name: 'String'
                }
              },
              app_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'appProperties',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              system_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'systemProperties',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
