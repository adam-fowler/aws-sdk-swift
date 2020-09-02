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

import SotoCore
import Foundation

extension MediaStore {
    // MARK: Enums

    public enum ContainerLevelMetrics: String, CustomStringConvertible, Codable {
        case enabled = "ENABLED"
        case disabled = "DISABLED"
        public var description: String { return self.rawValue }
    }

    public enum ContainerStatus: String, CustomStringConvertible, Codable {
        case active = "ACTIVE"
        case creating = "CREATING"
        case deleting = "DELETING"
        public var description: String { return self.rawValue }
    }

    public enum MethodName: String, CustomStringConvertible, Codable {
        case put = "PUT"
        case get = "GET"
        case delete = "DELETE"
        case head = "HEAD"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct Container: AWSDecodableShape {

        /// The state of access logging on the container. This value is false by default, indicating that AWS Elemental MediaStore does not send access logs to Amazon CloudWatch Logs. When you enable access logging on the container, MediaStore changes this value to true, indicating that the service delivers access logs for objects stored in that container to CloudWatch Logs.
        public let accessLoggingEnabled: Bool?
        /// The Amazon Resource Name (ARN) of the container. The ARN has the following format: arn:aws:&lt;region&gt;:&lt;account that owns this container&gt;:container/&lt;name of container&gt;  For example: arn:aws:mediastore:us-west-2:111122223333:container/movies 
        public let arn: String?
        /// Unix timestamp.
        public let creationTime: TimeStamp?
        /// The DNS endpoint of the container. Use the endpoint to identify the specific container when sending requests to the data plane. The service assigns this value when the container is created. Once the value has been assigned, it does not change.
        public let endpoint: String?
        /// The name of the container.
        public let name: String?
        /// The status of container creation or deletion. The status is one of the following: CREATING, ACTIVE, or DELETING. While the service is creating the container, the status is CREATING. When the endpoint is available, the status changes to ACTIVE.
        public let status: ContainerStatus?

        public init(accessLoggingEnabled: Bool? = nil, arn: String? = nil, creationTime: TimeStamp? = nil, endpoint: String? = nil, name: String? = nil, status: ContainerStatus? = nil) {
            self.accessLoggingEnabled = accessLoggingEnabled
            self.arn = arn
            self.creationTime = creationTime
            self.endpoint = endpoint
            self.name = name
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case accessLoggingEnabled = "AccessLoggingEnabled"
            case arn = "ARN"
            case creationTime = "CreationTime"
            case endpoint = "Endpoint"
            case name = "Name"
            case status = "Status"
        }
    }

    public struct CorsRule: AWSEncodableShape & AWSDecodableShape {

        /// Specifies which headers are allowed in a preflight OPTIONS request through the Access-Control-Request-Headers header. Each header name that is specified in Access-Control-Request-Headers must have a corresponding entry in the rule. Only the headers that were requested are sent back.  This element can contain only one wildcard character (*).
        public let allowedHeaders: [String]
        /// Identifies an HTTP method that the origin that is specified in the rule is allowed to execute. Each CORS rule must contain at least one AllowedMethods and one AllowedOrigins element.
        public let allowedMethods: [MethodName]?
        /// One or more response headers that you want users to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object). Each CORS rule must have at least one AllowedOrigins element. The string value can include only one wildcard character (*), for example, http://*.example.com. Additionally, you can specify only one wildcard character to allow cross-origin access for all origins.
        public let allowedOrigins: [String]
        /// One or more headers in the response that you want users to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object). This element is optional for each rule.
        public let exposeHeaders: [String]?
        /// The time in seconds that your browser caches the preflight response for the specified resource. A CORS rule can have only one MaxAgeSeconds element.
        public let maxAgeSeconds: Int?

        public init(allowedHeaders: [String], allowedMethods: [MethodName]? = nil, allowedOrigins: [String], exposeHeaders: [String]? = nil, maxAgeSeconds: Int? = nil) {
            self.allowedHeaders = allowedHeaders
            self.allowedMethods = allowedMethods
            self.allowedOrigins = allowedOrigins
            self.exposeHeaders = exposeHeaders
            self.maxAgeSeconds = maxAgeSeconds
        }

        public func validate(name: String) throws {
            try self.allowedHeaders.forEach {
                try validate($0, name: "allowedHeaders[]", parent: name, max: 8192)
                try validate($0, name: "allowedHeaders[]", parent: name, min: 1)
                try validate($0, name: "allowedHeaders[]", parent: name, pattern: "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")
            }
            try validate(self.allowedHeaders, name: "allowedHeaders", parent: name, max: 100)
            try validate(self.allowedHeaders, name: "allowedHeaders", parent: name, min: 0)
            try validate(self.allowedMethods, name: "allowedMethods", parent: name, max: 4)
            try validate(self.allowedMethods, name: "allowedMethods", parent: name, min: 1)
            try self.allowedOrigins.forEach {
                try validate($0, name: "allowedOrigins[]", parent: name, max: 2048)
                try validate($0, name: "allowedOrigins[]", parent: name, min: 1)
                try validate($0, name: "allowedOrigins[]", parent: name, pattern: "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")
            }
            try validate(self.allowedOrigins, name: "allowedOrigins", parent: name, max: 100)
            try validate(self.allowedOrigins, name: "allowedOrigins", parent: name, min: 1)
            try self.exposeHeaders?.forEach {
                try validate($0, name: "exposeHeaders[]", parent: name, max: 8192)
                try validate($0, name: "exposeHeaders[]", parent: name, min: 1)
                try validate($0, name: "exposeHeaders[]", parent: name, pattern: "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")
            }
            try validate(self.exposeHeaders, name: "exposeHeaders", parent: name, max: 100)
            try validate(self.exposeHeaders, name: "exposeHeaders", parent: name, min: 0)
            try validate(self.maxAgeSeconds, name: "maxAgeSeconds", parent: name, max: 2147483647)
            try validate(self.maxAgeSeconds, name: "maxAgeSeconds", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case allowedHeaders = "AllowedHeaders"
            case allowedMethods = "AllowedMethods"
            case allowedOrigins = "AllowedOrigins"
            case exposeHeaders = "ExposeHeaders"
            case maxAgeSeconds = "MaxAgeSeconds"
        }
    }

    public struct CreateContainerInput: AWSEncodableShape {

        /// The name for the container. The name must be from 1 to 255 characters. Container names must be unique to your AWS account within a specific region. As an example, you could create a container named movies in every region, as long as you don’t have an existing container with that name.
        public let containerName: String
        /// An array of key:value pairs that you define. These values can be anything that you want. Typically, the tag key represents a category (such as "environment") and the tag value represents a specific value within that category (such as "test," "development," or "production"). You can add up to 50 tags to each container. For more information about tagging, including naming and usage conventions, see Tagging Resources in MediaStore.
        public let tags: [Tag]?

        public init(containerName: String, tags: [Tag]? = nil) {
            self.containerName = containerName
            self.tags = tags
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try validate(self.tags, name: "tags", parent: name, max: 200)
            try validate(self.tags, name: "tags", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
            case tags = "Tags"
        }
    }

    public struct CreateContainerOutput: AWSDecodableShape {

        /// ContainerARN: The Amazon Resource Name (ARN) of the newly created container. The ARN has the following format: arn:aws:&lt;region&gt;:&lt;account that owns this container&gt;:container/&lt;name of container&gt;. For example: arn:aws:mediastore:us-west-2:111122223333:container/movies  ContainerName: The container name as specified in the request. CreationTime: Unix time stamp. Status: The status of container creation or deletion. The status is one of the following: CREATING, ACTIVE, or DELETING. While the service is creating the container, the status is CREATING. When an endpoint is available, the status changes to ACTIVE. The return value does not include the container's endpoint. To make downstream requests, you must obtain this value by using DescribeContainer or ListContainers.
        public let container: Container

        public init(container: Container) {
            self.container = container
        }

        private enum CodingKeys: String, CodingKey {
            case container = "Container"
        }
    }

    public struct DeleteContainerInput: AWSEncodableShape {

        /// The name of the container to delete. 
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct DeleteContainerOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct DeleteContainerPolicyInput: AWSEncodableShape {

        /// The name of the container that holds the policy.
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct DeleteContainerPolicyOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct DeleteCorsPolicyInput: AWSEncodableShape {

        /// The name of the container to remove the policy from.
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct DeleteCorsPolicyOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct DeleteLifecyclePolicyInput: AWSEncodableShape {

        /// The name of the container that holds the object lifecycle policy.
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct DeleteLifecyclePolicyOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct DeleteMetricPolicyInput: AWSEncodableShape {

        /// The name of the container that is associated with the metric policy that you want to delete.
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct DeleteMetricPolicyOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct DescribeContainerInput: AWSEncodableShape {

        /// The name of the container to query.
        public let containerName: String?

        public init(containerName: String? = nil) {
            self.containerName = containerName
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct DescribeContainerOutput: AWSDecodableShape {

        /// The name of the queried container.
        public let container: Container?

        public init(container: Container? = nil) {
            self.container = container
        }

        private enum CodingKeys: String, CodingKey {
            case container = "Container"
        }
    }

    public struct GetContainerPolicyInput: AWSEncodableShape {

        /// The name of the container. 
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct GetContainerPolicyOutput: AWSDecodableShape {

        /// The contents of the access policy.
        public let policy: String

        public init(policy: String) {
            self.policy = policy
        }

        private enum CodingKeys: String, CodingKey {
            case policy = "Policy"
        }
    }

    public struct GetCorsPolicyInput: AWSEncodableShape {

        /// The name of the container that the policy is assigned to.
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct GetCorsPolicyOutput: AWSDecodableShape {

        /// The CORS policy assigned to the container.
        public let corsPolicy: [CorsRule]

        public init(corsPolicy: [CorsRule]) {
            self.corsPolicy = corsPolicy
        }

        private enum CodingKeys: String, CodingKey {
            case corsPolicy = "CorsPolicy"
        }
    }

    public struct GetLifecyclePolicyInput: AWSEncodableShape {

        /// The name of the container that the object lifecycle policy is assigned to.
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct GetLifecyclePolicyOutput: AWSDecodableShape {

        /// The object lifecycle policy that is assigned to the container.
        public let lifecyclePolicy: String

        public init(lifecyclePolicy: String) {
            self.lifecyclePolicy = lifecyclePolicy
        }

        private enum CodingKeys: String, CodingKey {
            case lifecyclePolicy = "LifecyclePolicy"
        }
    }

    public struct GetMetricPolicyInput: AWSEncodableShape {

        /// The name of the container that is associated with the metric policy.
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct GetMetricPolicyOutput: AWSDecodableShape {

        /// The metric policy that is associated with the specific container.
        public let metricPolicy: MetricPolicy

        public init(metricPolicy: MetricPolicy) {
            self.metricPolicy = metricPolicy
        }

        private enum CodingKeys: String, CodingKey {
            case metricPolicy = "MetricPolicy"
        }
    }

    public struct ListContainersInput: AWSEncodableShape {

        /// Enter the maximum number of containers in the response. Use from 1 to 255 characters. 
        public let maxResults: Int?
        /// Only if you used MaxResults in the first command, enter the token (which was included in the previous response) to obtain the next set of containers. This token is included in a response only if there actually are more containers to list.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try validate(self.nextToken, name: "nextToken", parent: name, pattern: "[0-9A-Za-z=/+]+")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListContainersOutput: AWSDecodableShape {

        /// The names of the containers.
        public let containers: [Container]
        ///  NextToken is the token to use in the next call to ListContainers. This token is returned only if you included the MaxResults tag in the original command, and only if there are still containers to return. 
        public let nextToken: String?

        public init(containers: [Container], nextToken: String? = nil) {
            self.containers = containers
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case containers = "Containers"
            case nextToken = "NextToken"
        }
    }

    public struct ListTagsForResourceInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) for the container.
        public let resource: String

        public init(resource: String) {
            self.resource = resource
        }

        public func validate(name: String) throws {
            try validate(self.resource, name: "resource", parent: name, max: 1024)
            try validate(self.resource, name: "resource", parent: name, min: 1)
            try validate(self.resource, name: "resource", parent: name, pattern: "arn:aws:mediastore:[a-z]+-[a-z]+-\\d:\\d{12}:container/[\\w-]{1,255}")
        }

        private enum CodingKeys: String, CodingKey {
            case resource = "Resource"
        }
    }

    public struct ListTagsForResourceOutput: AWSDecodableShape {

        /// An array of key:value pairs that are assigned to the container.
        public let tags: [Tag]?

        public init(tags: [Tag]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct MetricPolicy: AWSEncodableShape & AWSDecodableShape {

        /// A setting to enable or disable metrics at the container level.
        public let containerLevelMetrics: ContainerLevelMetrics
        /// A parameter that holds an array of rules that enable metrics at the object level. This parameter is optional, but if you choose to include it, you must also include at least one rule. By default, you can include up to five rules. You can also request a quota increase to allow up to 300 rules per policy.
        public let metricPolicyRules: [MetricPolicyRule]?

        public init(containerLevelMetrics: ContainerLevelMetrics, metricPolicyRules: [MetricPolicyRule]? = nil) {
            self.containerLevelMetrics = containerLevelMetrics
            self.metricPolicyRules = metricPolicyRules
        }

        public func validate(name: String) throws {
            try self.metricPolicyRules?.forEach {
                try $0.validate(name: "\(name).metricPolicyRules[]")
            }
            try validate(self.metricPolicyRules, name: "metricPolicyRules", parent: name, max: 300)
            try validate(self.metricPolicyRules, name: "metricPolicyRules", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case containerLevelMetrics = "ContainerLevelMetrics"
            case metricPolicyRules = "MetricPolicyRules"
        }
    }

    public struct MetricPolicyRule: AWSEncodableShape & AWSDecodableShape {

        /// A path or file name that defines which objects to include in the group. Wildcards (*) are acceptable.
        public let objectGroup: String
        /// A name that allows you to refer to the object group.
        public let objectGroupName: String

        public init(objectGroup: String, objectGroupName: String) {
            self.objectGroup = objectGroup
            self.objectGroupName = objectGroupName
        }

        public func validate(name: String) throws {
            try validate(self.objectGroup, name: "objectGroup", parent: name, max: 900)
            try validate(self.objectGroup, name: "objectGroup", parent: name, min: 1)
            try validate(self.objectGroup, name: "objectGroup", parent: name, pattern: "/?(?:[A-Za-z0-9_=:\\.\\-\\~\\*]+/){0,10}(?:[A-Za-z0-9_=:\\.\\-\\~\\*]+)?/?")
            try validate(self.objectGroupName, name: "objectGroupName", parent: name, max: 30)
            try validate(self.objectGroupName, name: "objectGroupName", parent: name, min: 1)
            try validate(self.objectGroupName, name: "objectGroupName", parent: name, pattern: "[a-zA-Z0-9_]+")
        }

        private enum CodingKeys: String, CodingKey {
            case objectGroup = "ObjectGroup"
            case objectGroupName = "ObjectGroupName"
        }
    }

    public struct PutContainerPolicyInput: AWSEncodableShape {

        /// The name of the container.
        public let containerName: String
        /// The contents of the policy, which includes the following:    One Version tag   One Statement tag that contains the standard tags for the policy.  
        public let policy: String

        public init(containerName: String, policy: String) {
            self.containerName = containerName
            self.policy = policy
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
            try validate(self.policy, name: "policy", parent: name, max: 8192)
            try validate(self.policy, name: "policy", parent: name, min: 1)
            try validate(self.policy, name: "policy", parent: name, pattern: "[\\x00-\\x7F]+")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
            case policy = "Policy"
        }
    }

    public struct PutContainerPolicyOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct PutCorsPolicyInput: AWSEncodableShape {

        /// The name of the container that you want to assign the CORS policy to.
        public let containerName: String
        /// The CORS policy to apply to the container. 
        public let corsPolicy: [CorsRule]

        public init(containerName: String, corsPolicy: [CorsRule]) {
            self.containerName = containerName
            self.corsPolicy = corsPolicy
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
            try self.corsPolicy.forEach {
                try $0.validate(name: "\(name).corsPolicy[]")
            }
            try validate(self.corsPolicy, name: "corsPolicy", parent: name, max: 100)
            try validate(self.corsPolicy, name: "corsPolicy", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
            case corsPolicy = "CorsPolicy"
        }
    }

    public struct PutCorsPolicyOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct PutLifecyclePolicyInput: AWSEncodableShape {

        /// The name of the container that you want to assign the object lifecycle policy to.
        public let containerName: String
        /// The object lifecycle policy to apply to the container.
        public let lifecyclePolicy: String

        public init(containerName: String, lifecyclePolicy: String) {
            self.containerName = containerName
            self.lifecyclePolicy = lifecyclePolicy
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
            try validate(self.lifecyclePolicy, name: "lifecyclePolicy", parent: name, max: 8192)
            try validate(self.lifecyclePolicy, name: "lifecyclePolicy", parent: name, min: 0)
            try validate(self.lifecyclePolicy, name: "lifecyclePolicy", parent: name, pattern: "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
            case lifecyclePolicy = "LifecyclePolicy"
        }
    }

    public struct PutLifecyclePolicyOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct PutMetricPolicyInput: AWSEncodableShape {

        /// The name of the container that you want to add the metric policy to.
        public let containerName: String
        /// The metric policy that you want to associate with the container. In the policy, you must indicate whether you want MediaStore to send container-level metrics. You can also include up to five rules to define groups of objects that you want MediaStore to send object-level metrics for. If you include rules in the policy, construct each rule with both of the following:   An object group that defines which objects to include in the group. The definition can be a path or a file name, but it can't have more than 900 characters. Valid characters are: a-z, A-Z, 0-9, _ (underscore), = (equal), : (colon), . (period), - (hyphen), ~ (tilde), / (forward slash), and * (asterisk). Wildcards (*) are acceptable.   An object group name that allows you to refer to the object group. The name can't have more than 30 characters. Valid characters are: a-z, A-Z, 0-9, and _ (underscore).  
        public let metricPolicy: MetricPolicy

        public init(containerName: String, metricPolicy: MetricPolicy) {
            self.containerName = containerName
            self.metricPolicy = metricPolicy
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
            try self.metricPolicy.validate(name: "\(name).metricPolicy")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
            case metricPolicy = "MetricPolicy"
        }
    }

    public struct PutMetricPolicyOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct StartAccessLoggingInput: AWSEncodableShape {

        /// The name of the container that you want to start access logging on.
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct StartAccessLoggingOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct StopAccessLoggingInput: AWSEncodableShape {

        /// The name of the container that you want to stop access logging on.
        public let containerName: String

        public init(containerName: String) {
            self.containerName = containerName
        }

        public func validate(name: String) throws {
            try validate(self.containerName, name: "containerName", parent: name, max: 255)
            try validate(self.containerName, name: "containerName", parent: name, min: 1)
            try validate(self.containerName, name: "containerName", parent: name, pattern: "[\\w-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case containerName = "ContainerName"
        }
    }

    public struct StopAccessLoggingOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct Tag: AWSEncodableShape & AWSDecodableShape {

        /// Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as "customer." Tag keys are case-sensitive.
        public let key: String
        /// Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as "companyA" or "companyB." Tag values are case-sensitive.
        public let value: String?

        public init(key: String, value: String? = nil) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try validate(self.key, name: "key", parent: name, max: 128)
            try validate(self.key, name: "key", parent: name, min: 1)
            try validate(self.key, name: "key", parent: name, pattern: "[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*")
            try validate(self.value, name: "value", parent: name, max: 256)
            try validate(self.value, name: "value", parent: name, min: 0)
            try validate(self.value, name: "value", parent: name, pattern: "[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*")
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct TagResourceInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) for the container. 
        public let resource: String
        /// An array of key:value pairs that you want to add to the container. You need to specify only the tags that you want to add or update. For example, suppose a container already has two tags (customer:CompanyA and priority:High). You want to change the priority tag and also add a third tag (type:Contract). For TagResource, you specify the following tags: priority:Medium, type:Contract. The result is that your container has three tags: customer:CompanyA, priority:Medium, and type:Contract.
        public let tags: [Tag]

        public init(resource: String, tags: [Tag]) {
            self.resource = resource
            self.tags = tags
        }

        public func validate(name: String) throws {
            try validate(self.resource, name: "resource", parent: name, max: 1024)
            try validate(self.resource, name: "resource", parent: name, min: 1)
            try validate(self.resource, name: "resource", parent: name, pattern: "arn:aws:mediastore:[a-z]+-[a-z]+-\\d:\\d{12}:container/[\\w-]{1,255}")
            try self.tags.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try validate(self.tags, name: "tags", parent: name, max: 200)
            try validate(self.tags, name: "tags", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case resource = "Resource"
            case tags = "Tags"
        }
    }

    public struct TagResourceOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct UntagResourceInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) for the container.
        public let resource: String
        /// A comma-separated list of keys for tags that you want to remove from the container. For example, if your container has two tags (customer:CompanyA and priority:High) and you want to remove one of the tags (priority:High), you specify the key for the tag that you want to remove (priority).
        public let tagKeys: [String]

        public init(resource: String, tagKeys: [String]) {
            self.resource = resource
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try validate(self.resource, name: "resource", parent: name, max: 1024)
            try validate(self.resource, name: "resource", parent: name, min: 1)
            try validate(self.resource, name: "resource", parent: name, pattern: "arn:aws:mediastore:[a-z]+-[a-z]+-\\d:\\d{12}:container/[\\w-]{1,255}")
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: "[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case resource = "Resource"
            case tagKeys = "TagKeys"
        }
    }

    public struct UntagResourceOutput: AWSDecodableShape {


        public init() {
        }

    }
}