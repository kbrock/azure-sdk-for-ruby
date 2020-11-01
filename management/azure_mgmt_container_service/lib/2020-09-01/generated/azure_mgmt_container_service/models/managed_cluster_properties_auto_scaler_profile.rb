# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_09_01
  module Models
    #
    # Parameters to be applied to the cluster-autoscaler when enabled
    #
    class ManagedClusterPropertiesAutoScalerProfile

      include MsRestAzure

      # @return [String]
      attr_accessor :balance_similar_node_groups

      # @return [Expander] Possible values include: 'least-waste', 'most-pods',
      # 'random'
      attr_accessor :expander

      # @return [String]
      attr_accessor :max_empty_bulk_delete

      # @return [String]
      attr_accessor :max_graceful_termination_sec

      # @return [String]
      attr_accessor :max_total_unready_percentage

      # @return [String]
      attr_accessor :new_pod_scale_up_delay

      # @return [String]
      attr_accessor :ok_total_unready_count

      # @return [String]
      attr_accessor :scan_interval

      # @return [String]
      attr_accessor :scale_down_delay_after_add

      # @return [String]
      attr_accessor :scale_down_delay_after_delete

      # @return [String]
      attr_accessor :scale_down_delay_after_failure

      # @return [String]
      attr_accessor :scale_down_unneeded_time

      # @return [String]
      attr_accessor :scale_down_unready_time

      # @return [String]
      attr_accessor :scale_down_utilization_threshold

      # @return [String]
      attr_accessor :skip_nodes_with_local_storage

      # @return [String]
      attr_accessor :skip_nodes_with_system_pods


      #
      # Mapper for ManagedClusterPropertiesAutoScalerProfile class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedClusterProperties_autoScalerProfile',
          type: {
            name: 'Composite',
            class_name: 'ManagedClusterPropertiesAutoScalerProfile',
            model_properties: {
              balance_similar_node_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'balance-similar-node-groups',
                type: {
                  name: 'String'
                }
              },
              expander: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expander',
                type: {
                  name: 'String'
                }
              },
              max_empty_bulk_delete: {
                client_side_validation: true,
                required: false,
                serialized_name: 'max-empty-bulk-delete',
                type: {
                  name: 'String'
                }
              },
              max_graceful_termination_sec: {
                client_side_validation: true,
                required: false,
                serialized_name: 'max-graceful-termination-sec',
                type: {
                  name: 'String'
                }
              },
              max_total_unready_percentage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'max-total-unready-percentage',
                type: {
                  name: 'String'
                }
              },
              new_pod_scale_up_delay: {
                client_side_validation: true,
                required: false,
                serialized_name: 'new-pod-scale-up-delay',
                type: {
                  name: 'String'
                }
              },
              ok_total_unready_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ok-total-unready-count',
                type: {
                  name: 'String'
                }
              },
              scan_interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scan-interval',
                type: {
                  name: 'String'
                }
              },
              scale_down_delay_after_add: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scale-down-delay-after-add',
                type: {
                  name: 'String'
                }
              },
              scale_down_delay_after_delete: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scale-down-delay-after-delete',
                type: {
                  name: 'String'
                }
              },
              scale_down_delay_after_failure: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scale-down-delay-after-failure',
                type: {
                  name: 'String'
                }
              },
              scale_down_unneeded_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scale-down-unneeded-time',
                type: {
                  name: 'String'
                }
              },
              scale_down_unready_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scale-down-unready-time',
                type: {
                  name: 'String'
                }
              },
              scale_down_utilization_threshold: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scale-down-utilization-threshold',
                type: {
                  name: 'String'
                }
              },
              skip_nodes_with_local_storage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'skip-nodes-with-local-storage',
                type: {
                  name: 'String'
                }
              },
              skip_nodes_with_system_pods: {
                client_side_validation: true,
                required: false,
                serialized_name: 'skip-nodes-with-system-pods',
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
