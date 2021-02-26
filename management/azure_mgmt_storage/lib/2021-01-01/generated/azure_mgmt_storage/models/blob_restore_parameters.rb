# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2021_01_01
  module Models
    #
    # Blob restore parameters
    #
    class BlobRestoreParameters

      include MsRestAzure

      # @return [DateTime] Restore blob to the specified time.
      attr_accessor :time_to_restore

      # @return [Array<BlobRestoreRange>] Blob ranges to restore.
      attr_accessor :blob_ranges


      #
      # Mapper for BlobRestoreParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BlobRestoreParameters',
          type: {
            name: 'Composite',
            class_name: 'BlobRestoreParameters',
            model_properties: {
              time_to_restore: {
                client_side_validation: true,
                required: true,
                serialized_name: 'timeToRestore',
                type: {
                  name: 'DateTime'
                }
              },
              blob_ranges: {
                client_side_validation: true,
                required: true,
                serialized_name: 'blobRanges',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BlobRestoreRangeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BlobRestoreRange'
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
