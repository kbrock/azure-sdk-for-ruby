# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageCache::Mgmt::V2020_10_01
  module Models
    #
    # Properties of the Storage Target.
    #
    class StorageTargetProperties

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["nfs3"] = "Nfs3TargetProperties"
      @@discriminatorMap["clfs"] = "ClfsTargetProperties"
      @@discriminatorMap["unknown"] = "UnknownTargetProperties"

      def initialize
        @targetType = "StorageTargetProperties"
      end

      attr_accessor :targetType

      # @return [Array<NamespaceJunction>] List of Cache namespace junctions to
      # target for namespace associations.
      attr_accessor :junctions

      # @return [ProvisioningStateType] ARM provisioning state, see
      # https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/Addendum.md#provisioningstate-property.
      # Possible values include: 'Succeeded', 'Failed', 'Cancelled',
      # 'Creating', 'Deleting', 'Updating'
      attr_accessor :provisioning_state

      # @return [Nfs3Target] Properties when targetType is nfs3.
      attr_accessor :nfs3

      # @return [ClfsTarget] Properties when targetType is clfs.
      attr_accessor :clfs

      # @return [UnknownTarget] Properties when targetType is unknown.
      attr_accessor :unknown


      #
      # Mapper for StorageTargetProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageTargetProperties',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'targetType',
            uber_parent: 'StorageTargetProperties',
            class_name: 'StorageTargetProperties',
            model_properties: {
              junctions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'junctions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NamespaceJunctionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NamespaceJunction'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              nfs3: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nfs3',
                type: {
                  name: 'Composite',
                  class_name: 'Nfs3Target'
                }
              },
              clfs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clfs',
                type: {
                  name: 'Composite',
                  class_name: 'ClfsTarget'
                }
              },
              unknown: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unknown',
                type: {
                  name: 'Composite',
                  class_name: 'UnknownTarget'
                }
              }
            }
          }
        }
      end
    end
  end
end
