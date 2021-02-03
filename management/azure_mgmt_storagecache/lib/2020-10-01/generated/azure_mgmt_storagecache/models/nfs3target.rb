# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2020_10_01
  module Models
    #
    # Properties pertaining to the Nfs3Target
    #
    class Nfs3Target

      include MsRestAzure

      # @return [String] IP address or host name of an NFSv3 host (e.g.,
      # 10.0.44.44).
      attr_accessor :target

      # @return [String] Identifies the usage model to be used for this Storage
      # Target. Get choices from .../usageModels
      attr_accessor :usage_model


      #
      # Mapper for Nfs3Target class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Nfs3Target',
          type: {
            name: 'Composite',
            class_name: 'Nfs3Target',
            model_properties: {
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
                constraints: {
                  Pattern: '^[-.0-9a-zA-Z]+$'
                },
                type: {
                  name: 'String'
                }
              },
              usage_model: {
                client_side_validation: true,
                required: false,
                serialized_name: 'usageModel',
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
