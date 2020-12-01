# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2019_07_01_preview
  #
  # Use this API to manage the IoT hubs in your Azure subscription.
  #
  class IotHub
    include MsRestAzure

    #
    # Creates and initializes a new instance of the IotHub class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [IotHubClient] reference to the IotHubClient
    attr_reader :client

    #
    # Manual Failover Fail over
    #
    # Perform manual fail over of given hub
    #
    # @param iot_hub_name [String] IotHub to fail over
    # @param failover_input [FailoverInput] Region to failover to. Must be a azure
    # DR pair
    # @param resource_group_name [String] resource group which Iot Hub belongs to
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def manual_failover(iot_hub_name, failover_input, resource_group_name, custom_headers:nil)
      response = manual_failover_async(iot_hub_name, failover_input, resource_group_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param iot_hub_name [String] IotHub to fail over
    # @param failover_input [FailoverInput] Region to failover to. Must be a azure
    # DR pair
    # @param resource_group_name [String] resource group which Iot Hub belongs to
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def manual_failover_async(iot_hub_name, failover_input, resource_group_name, custom_headers:nil)
      # Send request
      promise = begin_manual_failover_async(iot_hub_name, failover_input, resource_group_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Manual Failover Fail over
    #
    # Perform manual fail over of given hub
    #
    # @param iot_hub_name [String] IotHub to fail over
    # @param failover_input [FailoverInput] Region to failover to. Must be a azure
    # DR pair
    # @param resource_group_name [String] resource group which Iot Hub belongs to
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_manual_failover(iot_hub_name, failover_input, resource_group_name, custom_headers:nil)
      response = begin_manual_failover_async(iot_hub_name, failover_input, resource_group_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Manual Failover Fail over
    #
    # Perform manual fail over of given hub
    #
    # @param iot_hub_name [String] IotHub to fail over
    # @param failover_input [FailoverInput] Region to failover to. Must be a azure
    # DR pair
    # @param resource_group_name [String] resource group which Iot Hub belongs to
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_manual_failover_with_http_info(iot_hub_name, failover_input, resource_group_name, custom_headers:nil)
      begin_manual_failover_async(iot_hub_name, failover_input, resource_group_name, custom_headers:custom_headers).value!
    end

    #
    # Manual Failover Fail over
    #
    # Perform manual fail over of given hub
    #
    # @param iot_hub_name [String] IotHub to fail over
    # @param failover_input [FailoverInput] Region to failover to. Must be a azure
    # DR pair
    # @param resource_group_name [String] resource group which Iot Hub belongs to
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_manual_failover_async(iot_hub_name, failover_input, resource_group_name, custom_headers:nil)
      fail ArgumentError, 'iot_hub_name is nil' if iot_hub_name.nil?
      fail ArgumentError, 'failover_input is nil' if failover_input.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::IotHub::Mgmt::V2019_07_01_preview::Models::FailoverInput.mapper()
      request_content = @client.serialize(request_mapper,  failover_input)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Devices/IotHubs/{iotHubName}/failover'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'iotHubName' => iot_hub_name,'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
