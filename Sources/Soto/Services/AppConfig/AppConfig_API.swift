//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import SotoCore

/*
Client object for interacting with AWS AppConfig service.

AWS AppConfig Use AWS AppConfig, a capability of AWS Systems Manager, to create, manage, and quickly deploy application configurations. AppConfig supports controlled deployments to applications of any size and includes built-in validation checks and monitoring. You can use AppConfig with applications hosted on Amazon EC2 instances, AWS Lambda, containers, mobile applications, or IoT devices. To prevent errors when deploying application configurations, especially for production systems where a simple typo could cause an unexpected outage, AppConfig includes validators. A validator provides a syntactic or semantic check to ensure that the configuration you want to deploy works as intended. To validate your application configuration data, you provide a schema or a Lambda function that runs against the configuration. The configuration deployment or update can only proceed when the configuration data is valid. During a configuration deployment, AppConfig monitors the application to ensure that the deployment is successful. If the system encounters an error, AppConfig rolls back the change to minimize impact for your application users. You can configure a deployment strategy for each application or environment that includes deployment criteria, including velocity, bake time, and alarms to monitor. Similar to error monitoring, if a deployment triggers an alarm, AppConfig automatically rolls back to the previous version.  AppConfig supports multiple use cases. Here are some examples.    Application tuning: Use AppConfig to carefully introduce changes to your application that can only be tested with production traffic.    Feature toggle: Use AppConfig to turn on new features that require a timely deployment, such as a product launch or announcement.     Allow list: Use AppConfig to allow premium subscribers to access paid content.     Operational issues: Use AppConfig to reduce stress on your application when a dependency or other external factor impacts the system.   This reference is intended to be used with the AWS AppConfig User Guide.
*/
public struct AppConfig: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the AppConfig client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "appconfig",
            serviceProtocol: .restjson,
            apiVersion: "2019-10-09",
            endpoint: endpoint,
            possibleErrorTypes: [AppConfigErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }
    
    // MARK: API Calls

    ///  An application in AppConfig is a logical unit of code that provides capabilities for your customers. For example, an application can be a microservice that runs on Amazon EC2 instances, a mobile application installed by your users, a serverless application using Amazon API Gateway and AWS Lambda, or any system you run on behalf of others.
    public func createApplication(_ input: CreateApplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Application> {
        return self.client.execute(operation: "CreateApplication", path: "/applications", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Information that enables AppConfig to access the configuration source. Valid configuration sources include Systems Manager (SSM) documents, SSM Parameter Store parameters, and Amazon S3 objects. A configuration profile includes the following information.   The Uri location of the configuration data.   The AWS Identity and Access Management (IAM) role that provides access to the configuration data.   A validator for the configuration data. Available validators include either a JSON Schema or an AWS Lambda function.   For more information, see Create a Configuration and a Configuration Profile in the AWS AppConfig User Guide.
    public func createConfigurationProfile(_ input: CreateConfigurationProfileRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ConfigurationProfile> {
        return self.client.execute(operation: "CreateConfigurationProfile", path: "/applications/{ApplicationId}/configurationprofiles", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  A deployment strategy defines important criteria for rolling out your configuration to the designated targets. A deployment strategy includes: the overall duration required, a percentage of targets to receive the deployment during each interval, an algorithm that defines how percentage grows, and bake time.
    public func createDeploymentStrategy(_ input: CreateDeploymentStrategyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeploymentStrategy> {
        return self.client.execute(operation: "CreateDeploymentStrategy", path: "/deploymentstrategies", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  For each application, you define one or more environments. An environment is a logical deployment group of AppConfig targets, such as applications in a Beta or Production environment. You can also define environments for application subcomponents such as the Web, Mobile and Back-end components for your application. You can configure Amazon CloudWatch alarms for each environment. The system monitors alarms during a configuration deployment. If an alarm is triggered, the system rolls back the configuration.
    public func createEnvironment(_ input: CreateEnvironmentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Environment> {
        return self.client.execute(operation: "CreateEnvironment", path: "/applications/{ApplicationId}/environments", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Create a new configuration in the AppConfig configuration store.
    public func createHostedConfigurationVersion(_ input: CreateHostedConfigurationVersionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<HostedConfigurationVersion> {
        return self.client.execute(operation: "CreateHostedConfigurationVersion", path: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Delete an application. Deleting an application does not delete a configuration from a host.
    @discardableResult public func deleteApplication(_ input: DeleteApplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteApplication", path: "/applications/{ApplicationId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Delete a configuration profile. Deleting a configuration profile does not delete a configuration from a host.
    @discardableResult public func deleteConfigurationProfile(_ input: DeleteConfigurationProfileRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteConfigurationProfile", path: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Delete a deployment strategy. Deleting a deployment strategy does not delete a configuration from a host.
    @discardableResult public func deleteDeploymentStrategy(_ input: DeleteDeploymentStrategyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteDeploymentStrategy", path: "/deployementstrategies/{DeploymentStrategyId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Delete an environment. Deleting an environment does not delete a configuration from a host.
    @discardableResult public func deleteEnvironment(_ input: DeleteEnvironmentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteEnvironment", path: "/applications/{ApplicationId}/environments/{EnvironmentId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Delete a version of a configuration from the AppConfig configuration store.
    @discardableResult public func deleteHostedConfigurationVersion(_ input: DeleteHostedConfigurationVersionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteHostedConfigurationVersion", path: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve information about an application.
    public func getApplication(_ input: GetApplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Application> {
        return self.client.execute(operation: "GetApplication", path: "/applications/{ApplicationId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Receive information about a configuration.  AWS AppConfig uses the value of the ClientConfigurationVersion parameter to identify the configuration version on your clients. If you don’t send ClientConfigurationVersion with each call to GetConfiguration, your clients receive the current configuration. You are charged each time your clients receive a configuration. To avoid excess charges, we recommend that you include the ClientConfigurationVersion value with every call to GetConfiguration. This value must be saved on your client. Subsequent calls to GetConfiguration must pass this value by using the ClientConfigurationVersion parameter.  
    public func getConfiguration(_ input: GetConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Configuration> {
        return self.client.execute(operation: "GetConfiguration", path: "/applications/{Application}/environments/{Environment}/configurations/{Configuration}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve information about a configuration profile.
    public func getConfigurationProfile(_ input: GetConfigurationProfileRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ConfigurationProfile> {
        return self.client.execute(operation: "GetConfigurationProfile", path: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve information about a configuration deployment.
    public func getDeployment(_ input: GetDeploymentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Deployment> {
        return self.client.execute(operation: "GetDeployment", path: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve information about a deployment strategy. A deployment strategy defines important criteria for rolling out your configuration to the designated targets. A deployment strategy includes: the overall duration required, a percentage of targets to receive the deployment during each interval, an algorithm that defines how percentage grows, and bake time.
    public func getDeploymentStrategy(_ input: GetDeploymentStrategyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeploymentStrategy> {
        return self.client.execute(operation: "GetDeploymentStrategy", path: "/deploymentstrategies/{DeploymentStrategyId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve information about an environment. An environment is a logical deployment group of AppConfig applications, such as applications in a Production environment or in an EU_Region environment. Each configuration deployment targets an environment. You can enable one or more Amazon CloudWatch alarms for an environment. If an alarm is triggered during a deployment, AppConfig roles back the configuration.
    public func getEnvironment(_ input: GetEnvironmentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Environment> {
        return self.client.execute(operation: "GetEnvironment", path: "/applications/{ApplicationId}/environments/{EnvironmentId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Get information about a specific configuration version.
    public func getHostedConfigurationVersion(_ input: GetHostedConfigurationVersionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<HostedConfigurationVersion> {
        return self.client.execute(operation: "GetHostedConfigurationVersion", path: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  List all applications in your AWS account.
    public func listApplications(_ input: ListApplicationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Applications> {
        return self.client.execute(operation: "ListApplications", path: "/applications", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the configuration profiles for an application.
    public func listConfigurationProfiles(_ input: ListConfigurationProfilesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ConfigurationProfiles> {
        return self.client.execute(operation: "ListConfigurationProfiles", path: "/applications/{ApplicationId}/configurationprofiles", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  List deployment strategies.
    public func listDeploymentStrategies(_ input: ListDeploymentStrategiesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeploymentStrategies> {
        return self.client.execute(operation: "ListDeploymentStrategies", path: "/deploymentstrategies", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the deployments for an environment.
    public func listDeployments(_ input: ListDeploymentsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Deployments> {
        return self.client.execute(operation: "ListDeployments", path: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  List the environments for an application.
    public func listEnvironments(_ input: ListEnvironmentsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Environments> {
        return self.client.execute(operation: "ListEnvironments", path: "/applications/{ApplicationId}/environments", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  View a list of configurations stored in the AppConfig configuration store by version.
    public func listHostedConfigurationVersions(_ input: ListHostedConfigurationVersionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<HostedConfigurationVersions> {
        return self.client.execute(operation: "ListHostedConfigurationVersions", path: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the list of key-value tags assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ResourceTags> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts a deployment.
    public func startDeployment(_ input: StartDeploymentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Deployment> {
        return self.client.execute(operation: "StartDeployment", path: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Stops a deployment. This API action works only on deployments that have a status of DEPLOYING. This action moves the deployment to a status of ROLLED_BACK.
    public func stopDeployment(_ input: StopDeploymentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Deployment> {
        return self.client.execute(operation: "StopDeployment", path: "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Metadata to assign to an AppConfig resource. Tags help organize and categorize your AppConfig resources. Each tag consists of a key and an optional value, both of which you define. You can specify a maximum of 50 tags for a resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a tag key and value from an AppConfig resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an application.
    public func updateApplication(_ input: UpdateApplicationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Application> {
        return self.client.execute(operation: "UpdateApplication", path: "/applications/{ApplicationId}", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a configuration profile.
    public func updateConfigurationProfile(_ input: UpdateConfigurationProfileRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ConfigurationProfile> {
        return self.client.execute(operation: "UpdateConfigurationProfile", path: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a deployment strategy.
    public func updateDeploymentStrategy(_ input: UpdateDeploymentStrategyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeploymentStrategy> {
        return self.client.execute(operation: "UpdateDeploymentStrategy", path: "/deploymentstrategies/{DeploymentStrategyId}", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an environment.
    public func updateEnvironment(_ input: UpdateEnvironmentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Environment> {
        return self.client.execute(operation: "UpdateEnvironment", path: "/applications/{ApplicationId}/environments/{EnvironmentId}", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Uses the validators in a configuration profile to validate a configuration.
    @discardableResult public func validateConfiguration(_ input: ValidateConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "ValidateConfiguration", path: "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/validators", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }
}