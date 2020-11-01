# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_09_01
  module Models
    #
    # Desired managed outbound IPs for the cluster load balancer.
    #
    class ManagedClusterLoadBalancerProfileManagedOutboundIPs

      include MsRestAzure

      # @return [Integer] Desired number of outbound IP created/managed by
      # Azure for the cluster load balancer. Allowed values must be in the
      # range of 1 to 100 (inclusive). The default value is 1. . Default value:
      # 1 .
      attr_accessor :count


      #
      # Mapper for ManagedClusterLoadBalancerProfileManagedOutboundIPs class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedClusterLoadBalancerProfile_managedOutboundIPs',
          type: {
            name: 'Composite',
            class_name: 'ManagedClusterLoadBalancerProfileManagedOutboundIPs',
            model_properties: {
              count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'count',
                default_value: 1,
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
