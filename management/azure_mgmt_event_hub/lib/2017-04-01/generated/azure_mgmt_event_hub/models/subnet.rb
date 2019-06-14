# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2017_04_01
  module Models
    #
    # Properties supplied for Subnet
    #
    class Subnet

      include MsRestAzure

      # @return [String] Resource ID of Virtual Network Subnet
      attr_accessor :id


      #
      # Mapper for Subnet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Subnet',
          type: {
            name: 'Composite',
            class_name: 'Subnet',
            model_properties: {
              id: {
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
