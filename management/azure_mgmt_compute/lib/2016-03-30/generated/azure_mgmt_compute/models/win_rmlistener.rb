# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2016_03_30
  module Models
    #
    # Describes Protocol and thumbprint of Windows Remote Management listener
    #
    class WinRMListener

      include MsRestAzure

      # @return [ProtocolTypes] Specifies the protocol of listener. <br><br>
      # Possible values are: <br>**http** <br><br> **https**. Possible values
      # include: 'Http', 'Https'
      attr_accessor :protocol

      # @return [String] This is the URL of a certificate that has been
      # uploaded to Key Vault as a secret. For adding a secret to the Key
      # Vault, see [Add a key or secret to the key
      # vault](https://docs.microsoft.com/azure/key-vault/key-vault-get-started/#add).
      # In this case, your certificate needs to be It is the Base64 encoding of
      # the following JSON Object which is encoded in UTF-8: <br><br> {<br>
      # "data":"<Base64-encoded-certificate>",<br>  "dataType":"pfx",<br>
      # "password":"<pfx-file-password>"<br>}
      attr_accessor :certificate_url


      #
      # Mapper for WinRMListener class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WinRMListener',
          type: {
            name: 'Composite',
            class_name: 'WinRMListener',
            model_properties: {
              protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocol',
                type: {
                  name: 'Enum',
                  module: 'ProtocolTypes'
                }
              },
              certificate_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'certificateUrl',
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
