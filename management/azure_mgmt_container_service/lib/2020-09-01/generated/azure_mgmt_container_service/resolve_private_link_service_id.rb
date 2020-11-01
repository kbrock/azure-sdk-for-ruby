# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_09_01
  #
  # The Container Service Client.
  #
  class ResolvePrivateLinkServiceId
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ResolvePrivateLinkServiceId class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ContainerServiceClient] reference to the ContainerServiceClient
    attr_reader :client

    #
    # Gets the private link service ID for the specified managed cluster.
    #
    # Gets the private link service ID the specified managed cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param parameters [PrivateLinkResource] Parameters (name, groupId) supplied
    # in order to resolve a private link service ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PrivateLinkResource] operation results.
    #
    def post(resource_group_name, resource_name, parameters, custom_headers:nil)
      response = post_async(resource_group_name, resource_name, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the private link service ID for the specified managed cluster.
    #
    # Gets the private link service ID the specified managed cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param parameters [PrivateLinkResource] Parameters (name, groupId) supplied
    # in order to resolve a private link service ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def post_with_http_info(resource_group_name, resource_name, parameters, custom_headers:nil)
      post_async(resource_group_name, resource_name, parameters, custom_headers:custom_headers).value!
    end

    #
    # Gets the private link service ID for the specified managed cluster.
    #
    # Gets the private link service ID the specified managed cluster.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param resource_name [String] The name of the managed cluster resource.
    # @param parameters [PrivateLinkResource] Parameters (name, groupId) supplied
    # in order to resolve a private link service ID.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def post_async(resource_group_name, resource_name, parameters, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, 'resource_name is nil' if resource_name.nil?
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'MaxLength': '63'" if !resource_name.nil? && resource_name.length > 63
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'MinLength': '1'" if !resource_name.nil? && resource_name.length < 1
      fail ArgumentError, "'resource_name' should satisfy the constraint - 'Pattern': '^[a-zA-Z0-9]$|^[a-zA-Z0-9][-_a-zA-Z0-9]{0,61}[a-zA-Z0-9]$'" if !resource_name.nil? && resource_name.match(Regexp.new('^^[a-zA-Z0-9]$|^[a-zA-Z0-9][-_a-zA-Z0-9]{0,61}[a-zA-Z0-9]$$')).nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::ContainerService::Mgmt::V2020_09_01::Models::PrivateLinkResource.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/managedClusters/{resourceName}/resolvePrivateLinkServiceId'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'resourceName' => resource_name},
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
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ContainerService::Mgmt::V2020_09_01::Models::PrivateLinkResource.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
