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

extension CodeStarconnections {
    // MARK: Enums

    public enum ConnectionStatus: String, CustomStringConvertible, Codable {
        case pending = "PENDING"
        case available = "AVAILABLE"
        case error = "ERROR"
        public var description: String { return self.rawValue }
    }

    public enum ProviderType: String, CustomStringConvertible, Codable {
        case bitbucket = "Bitbucket"
        case githubenterpriseserver = "GitHubEnterpriseServer"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct Connection: AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of the connection. The ARN is used as the connection reference when the connection is shared between AWS services.  The ARN is never reused if the connection is deleted. 
        public let connectionArn: String?
        /// The name of the connection. Connection names must be unique in an AWS user account.
        public let connectionName: String?
        /// The current status of the connection. 
        public let connectionStatus: ConnectionStatus?
        /// The Amazon Resource Name (ARN) of the host associated with the connection.
        public let hostArn: String?
        /// The identifier of the external provider where your third-party code repository is configured. For Bitbucket, this is the account ID of the owner of the Bitbucket repository.
        public let ownerAccountId: String?
        /// The name of the external provider where your third-party code repository is configured. The valid provider type is Bitbucket.
        public let providerType: ProviderType?

        public init(connectionArn: String? = nil, connectionName: String? = nil, connectionStatus: ConnectionStatus? = nil, hostArn: String? = nil, ownerAccountId: String? = nil, providerType: ProviderType? = nil) {
            self.connectionArn = connectionArn
            self.connectionName = connectionName
            self.connectionStatus = connectionStatus
            self.hostArn = hostArn
            self.ownerAccountId = ownerAccountId
            self.providerType = providerType
        }

        private enum CodingKeys: String, CodingKey {
            case connectionArn = "ConnectionArn"
            case connectionName = "ConnectionName"
            case connectionStatus = "ConnectionStatus"
            case hostArn = "HostArn"
            case ownerAccountId = "OwnerAccountId"
            case providerType = "ProviderType"
        }
    }

    public struct CreateConnectionInput: AWSEncodableShape {

        /// The name of the connection to be created. The name must be unique in the calling AWS account.
        public let connectionName: String
        /// The Amazon Resource Name (ARN) of the host associated with the connection to be created.
        public let hostArn: String?
        /// The name of the external provider where your third-party code repository is configured. The valid provider type is Bitbucket.
        public let providerType: ProviderType?
        /// The key-value pair to use when tagging the resource.
        public let tags: [Tag]?

        public init(connectionName: String, hostArn: String? = nil, providerType: ProviderType? = nil, tags: [Tag]? = nil) {
            self.connectionName = connectionName
            self.hostArn = hostArn
            self.providerType = providerType
            self.tags = tags
        }

        public func validate(name: String) throws {
            try validate(self.connectionName, name: "connectionName", parent: name, max: 32)
            try validate(self.connectionName, name: "connectionName", parent: name, min: 1)
            try validate(self.hostArn, name: "hostArn", parent: name, max: 256)
            try validate(self.hostArn, name: "hostArn", parent: name, min: 0)
            try validate(self.hostArn, name: "hostArn", parent: name, pattern: "arn:aws(-[\\w]+)*:codestar-connections:.+:[0-9]{12}:host\\/.+")
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try validate(self.tags, name: "tags", parent: name, max: 200)
            try validate(self.tags, name: "tags", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case connectionName = "ConnectionName"
            case hostArn = "HostArn"
            case providerType = "ProviderType"
            case tags = "Tags"
        }
    }

    public struct CreateConnectionOutput: AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of the connection to be created. The ARN is used as the connection reference when the connection is shared between AWS services.  The ARN is never reused if the connection is deleted. 
        public let connectionArn: String
        /// Specifies the tags applied to the resource.
        public let tags: [Tag]?

        public init(connectionArn: String, tags: [Tag]? = nil) {
            self.connectionArn = connectionArn
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case connectionArn = "ConnectionArn"
            case tags = "Tags"
        }
    }

    public struct CreateHostInput: AWSEncodableShape {

        /// The name of the host to be created. The name must be unique in the calling AWS account.
        public let name: String
        /// The endpoint of the infrastructure to be represented by the host after it is created.
        public let providerEndpoint: String
        /// The name of the installed provider to be associated with your connection. The host resource represents the infrastructure where your provider type is installed. The valid provider type is GitHub Enterprise Server.
        public let providerType: ProviderType
        /// The VPC configuration to be provisioned for the host. A VPC must be configured and the infrastructure to be represented by the host must already be connected to the VPC.
        public let vpcConfiguration: VpcConfiguration?

        public init(name: String, providerEndpoint: String, providerType: ProviderType, vpcConfiguration: VpcConfiguration? = nil) {
            self.name = name
            self.providerEndpoint = providerEndpoint
            self.providerType = providerType
            self.vpcConfiguration = vpcConfiguration
        }

        public func validate(name: String) throws {
            try validate(self.name, name: "name", parent: name, max: 32)
            try validate(self.name, name: "name", parent: name, min: 1)
            try validate(self.providerEndpoint, name: "providerEndpoint", parent: name, max: 512)
            try validate(self.providerEndpoint, name: "providerEndpoint", parent: name, min: 1)
            try self.vpcConfiguration?.validate(name: "\(name).vpcConfiguration")
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case providerEndpoint = "ProviderEndpoint"
            case providerType = "ProviderType"
            case vpcConfiguration = "VpcConfiguration"
        }
    }

    public struct CreateHostOutput: AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of the host to be created.
        public let hostArn: String?

        public init(hostArn: String? = nil) {
            self.hostArn = hostArn
        }

        private enum CodingKeys: String, CodingKey {
            case hostArn = "HostArn"
        }
    }

    public struct DeleteConnectionInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the connection to be deleted.  The ARN is never reused if the connection is deleted. 
        public let connectionArn: String

        public init(connectionArn: String) {
            self.connectionArn = connectionArn
        }

        public func validate(name: String) throws {
            try validate(self.connectionArn, name: "connectionArn", parent: name, max: 256)
            try validate(self.connectionArn, name: "connectionArn", parent: name, min: 0)
            try validate(self.connectionArn, name: "connectionArn", parent: name, pattern: "arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+")
        }

        private enum CodingKeys: String, CodingKey {
            case connectionArn = "ConnectionArn"
        }
    }

    public struct DeleteConnectionOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct DeleteHostInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the host to be deleted.
        public let hostArn: String

        public init(hostArn: String) {
            self.hostArn = hostArn
        }

        public func validate(name: String) throws {
            try validate(self.hostArn, name: "hostArn", parent: name, max: 256)
            try validate(self.hostArn, name: "hostArn", parent: name, min: 0)
            try validate(self.hostArn, name: "hostArn", parent: name, pattern: "arn:aws(-[\\w]+)*:codestar-connections:.+:[0-9]{12}:host\\/.+")
        }

        private enum CodingKeys: String, CodingKey {
            case hostArn = "HostArn"
        }
    }

    public struct DeleteHostOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct GetConnectionInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of a connection.
        public let connectionArn: String

        public init(connectionArn: String) {
            self.connectionArn = connectionArn
        }

        public func validate(name: String) throws {
            try validate(self.connectionArn, name: "connectionArn", parent: name, max: 256)
            try validate(self.connectionArn, name: "connectionArn", parent: name, min: 0)
            try validate(self.connectionArn, name: "connectionArn", parent: name, pattern: "arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+")
        }

        private enum CodingKeys: String, CodingKey {
            case connectionArn = "ConnectionArn"
        }
    }

    public struct GetConnectionOutput: AWSDecodableShape {

        /// The connection details, such as status, owner, and provider type.
        public let connection: Connection?

        public init(connection: Connection? = nil) {
            self.connection = connection
        }

        private enum CodingKeys: String, CodingKey {
            case connection = "Connection"
        }
    }

    public struct GetHostInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the requested host.
        public let hostArn: String

        public init(hostArn: String) {
            self.hostArn = hostArn
        }

        public func validate(name: String) throws {
            try validate(self.hostArn, name: "hostArn", parent: name, max: 256)
            try validate(self.hostArn, name: "hostArn", parent: name, min: 0)
            try validate(self.hostArn, name: "hostArn", parent: name, pattern: "arn:aws(-[\\w]+)*:codestar-connections:.+:[0-9]{12}:host\\/.+")
        }

        private enum CodingKeys: String, CodingKey {
            case hostArn = "HostArn"
        }
    }

    public struct GetHostOutput: AWSDecodableShape {

        /// The name of the requested host.
        public let name: String?
        /// The endpoint of the infrastructure represented by the requested host.
        public let providerEndpoint: String?
        /// The provider type of the requested host, such as GitHub Enterprise Server.
        public let providerType: ProviderType?
        /// The status of the requested host.
        public let status: String?
        /// The VPC configuration of the requested host.
        public let vpcConfiguration: VpcConfiguration?

        public init(name: String? = nil, providerEndpoint: String? = nil, providerType: ProviderType? = nil, status: String? = nil, vpcConfiguration: VpcConfiguration? = nil) {
            self.name = name
            self.providerEndpoint = providerEndpoint
            self.providerType = providerType
            self.status = status
            self.vpcConfiguration = vpcConfiguration
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case providerEndpoint = "ProviderEndpoint"
            case providerType = "ProviderType"
            case status = "Status"
            case vpcConfiguration = "VpcConfiguration"
        }
    }

    public struct Host: AWSDecodableShape {

        /// The Amazon Resource Name (ARN) of the host.
        public let hostArn: String?
        /// The name of the host.
        public let name: String?
        /// The endpoint of the infrastructure where your provider type is installed.
        public let providerEndpoint: String?
        /// The name of the installed provider to be associated with your connection. The host resource represents the infrastructure where your provider type is installed. The valid provider type is GitHub Enterprise Server.
        public let providerType: ProviderType?
        /// The status of the host, such as PENDING, AVAILABLE, VPC_CONFIG_DELETING, VPC_CONFIG_INITIALIZING, and VPC_CONFIG_FAILED_INITIALIZATION.
        public let status: String?
        /// The status description for the host.
        public let statusMessage: String?
        /// The VPC configuration provisioned for the host.
        public let vpcConfiguration: VpcConfiguration?

        public init(hostArn: String? = nil, name: String? = nil, providerEndpoint: String? = nil, providerType: ProviderType? = nil, status: String? = nil, statusMessage: String? = nil, vpcConfiguration: VpcConfiguration? = nil) {
            self.hostArn = hostArn
            self.name = name
            self.providerEndpoint = providerEndpoint
            self.providerType = providerType
            self.status = status
            self.statusMessage = statusMessage
            self.vpcConfiguration = vpcConfiguration
        }

        private enum CodingKeys: String, CodingKey {
            case hostArn = "HostArn"
            case name = "Name"
            case providerEndpoint = "ProviderEndpoint"
            case providerType = "ProviderType"
            case status = "Status"
            case statusMessage = "StatusMessage"
            case vpcConfiguration = "VpcConfiguration"
        }
    }

    public struct ListConnectionsInput: AWSEncodableShape {

        /// Filters the list of connections to those associated with a specified host.
        public let hostArnFilter: String?
        /// The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value.
        public let maxResults: Int?
        /// The token that was returned from the previous ListConnections call, which can be used to return the next set of connections in the list.
        public let nextToken: String?
        /// Filters the list of connections to those associated with a specified provider, such as Bitbucket.
        public let providerTypeFilter: ProviderType?

        public init(hostArnFilter: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, providerTypeFilter: ProviderType? = nil) {
            self.hostArnFilter = hostArnFilter
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.providerTypeFilter = providerTypeFilter
        }

        public func validate(name: String) throws {
            try validate(self.hostArnFilter, name: "hostArnFilter", parent: name, max: 256)
            try validate(self.hostArnFilter, name: "hostArnFilter", parent: name, min: 0)
            try validate(self.hostArnFilter, name: "hostArnFilter", parent: name, pattern: "arn:aws(-[\\w]+)*:codestar-connections:.+:[0-9]{12}:host\\/.+")
            try validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try validate(self.maxResults, name: "maxResults", parent: name, min: 0)
            try validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try validate(self.nextToken, name: "nextToken", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case hostArnFilter = "HostArnFilter"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case providerTypeFilter = "ProviderTypeFilter"
        }
    }

    public struct ListConnectionsOutput: AWSDecodableShape {

        /// A list of connections and the details for each connection, such as status, owner, and provider type.
        public let connections: [Connection]?
        /// A token that can be used in the next ListConnections call. To view all items in the list, continue to call this operation with each subsequent token until no more nextToken values are returned.
        public let nextToken: String?

        public init(connections: [Connection]? = nil, nextToken: String? = nil) {
            self.connections = connections
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case connections = "Connections"
            case nextToken = "NextToken"
        }
    }

    public struct ListHostsInput: AWSEncodableShape {

        /// The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned nextToken value.
        public let maxResults: Int?
        /// The token that was returned from the previous ListHosts call, which can be used to return the next set of hosts in the list.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try validate(self.maxResults, name: "maxResults", parent: name, min: 0)
            try validate(self.nextToken, name: "nextToken", parent: name, max: 1024)
            try validate(self.nextToken, name: "nextToken", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListHostsOutput: AWSDecodableShape {

        /// A list of hosts and the details for each host, such as status, endpoint, and provider type.
        public let hosts: [Host]?
        /// A token that can be used in the next ListHosts call. To view all items in the list, continue to call this operation with each subsequent token until no more nextToken values are returned.
        public let nextToken: String?

        public init(hosts: [Host]? = nil, nextToken: String? = nil) {
            self.hosts = hosts
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case hosts = "Hosts"
            case nextToken = "NextToken"
        }
    }

    public struct ListTagsForResourceInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the resource for which you want to get information about tags, if any.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "ResourceArn"
        }
    }

    public struct ListTagsForResourceOutput: AWSDecodableShape {

        /// A list of tag key and value pairs associated with the specified resource.
        public let tags: [Tag]?

        public init(tags: [Tag]? = nil) {
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    public struct Tag: AWSEncodableShape & AWSDecodableShape {

        /// The tag's key.
        public let key: String
        /// The tag's value.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try validate(self.key, name: "key", parent: name, max: 128)
            try validate(self.key, name: "key", parent: name, min: 1)
            try validate(self.value, name: "value", parent: name, max: 256)
            try validate(self.value, name: "value", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct TagResourceInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.
        public let resourceArn: String
        /// The tags you want to modify or add to the resource.
        public let tags: [Tag]

        public init(resourceArn: String, tags: [Tag]) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
            try self.tags.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try validate(self.tags, name: "tags", parent: name, max: 200)
            try validate(self.tags, name: "tags", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "ResourceArn"
            case tags = "Tags"
        }
    }

    public struct TagResourceOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct UntagResourceInput: AWSEncodableShape {

        /// The Amazon Resource Name (ARN) of the resource to remove tags from.
        public let resourceArn: String
        /// The list of keys for the tags to be removed from the resource.
        public let tagKeys: [String]

        public init(resourceArn: String, tagKeys: [String]) {
            self.resourceArn = resourceArn
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name: "resourceArn", parent: name, max: 1011)
            try validate(self.resourceArn, name: "resourceArn", parent: name, min: 1)
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
            }
            try validate(self.tagKeys, name: "tagKeys", parent: name, max: 200)
            try validate(self.tagKeys, name: "tagKeys", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "ResourceArn"
            case tagKeys = "TagKeys"
        }
    }

    public struct UntagResourceOutput: AWSDecodableShape {


        public init() {
        }

    }

    public struct VpcConfiguration: AWSEncodableShape & AWSDecodableShape {

        /// The ID of the security group or security groups associated with the Amazon VPC connected to the infrastructure where your provider type is installed.
        public let securityGroupIds: [String]
        /// The ID of the subnet or subnets associated with the Amazon VPC connected to the infrastructure where your provider type is installed.
        public let subnetIds: [String]
        /// The value of the Transport Layer Security (TLS) certificate associated with the infrastructure where your provider type is installed.
        public let tlsCertificate: String?
        /// The ID of the Amazon VPC connected to the infrastructure where your provider type is installed.
        public let vpcId: String

        public init(securityGroupIds: [String], subnetIds: [String], tlsCertificate: String? = nil, vpcId: String) {
            self.securityGroupIds = securityGroupIds
            self.subnetIds = subnetIds
            self.tlsCertificate = tlsCertificate
            self.vpcId = vpcId
        }

        public func validate(name: String) throws {
            try self.securityGroupIds.forEach {
                try validate($0, name: "securityGroupIds[]", parent: name, pattern: "sg-\\w{8}(\\w{9})?")
            }
            try validate(self.securityGroupIds, name: "securityGroupIds", parent: name, max: 10)
            try validate(self.securityGroupIds, name: "securityGroupIds", parent: name, min: 1)
            try self.subnetIds.forEach {
                try validate($0, name: "subnetIds[]", parent: name, pattern: "subnet-\\w{8}(\\w{9})?")
            }
            try validate(self.subnetIds, name: "subnetIds", parent: name, max: 10)
            try validate(self.subnetIds, name: "subnetIds", parent: name, min: 1)
            try validate(self.tlsCertificate, name: "tlsCertificate", parent: name, max: 16384)
            try validate(self.tlsCertificate, name: "tlsCertificate", parent: name, min: 1)
            try validate(self.vpcId, name: "vpcId", parent: name, pattern: "vpc-\\w{8}(\\w{9})?")
        }

        private enum CodingKeys: String, CodingKey {
            case securityGroupIds = "SecurityGroupIds"
            case subnetIds = "SubnetIds"
            case tlsCertificate = "TlsCertificate"
            case vpcId = "VpcId"
        }
    }
}