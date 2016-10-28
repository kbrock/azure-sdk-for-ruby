# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents the response to a Get request for Upgrade status of an Azure
    # SQL Server.
    #
    class ServerUpgradeGetResult

      include MsRestAzure

      # @return [String] The status of the Azure SQL Server Upgrade.
      attr_accessor :status

      # @return [DateTime] The schedule time of the Azure SQL Server Upgrade
      # (ISO8601 format).
      attr_accessor :schedule_upgrade_after_time


      #
      # Mapper for ServerUpgradeGetResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServerUpgradeGetResult',
          type: {
            name: 'Composite',
            class_name: 'ServerUpgradeGetResult',
            model_properties: {
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              schedule_upgrade_after_time: {
                required: false,
                read_only: true,
                serialized_name: 'scheduleUpgradeAfterTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
