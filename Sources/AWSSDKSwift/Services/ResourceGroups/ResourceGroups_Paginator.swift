//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

// MARK: Paginators

extension ResourceGroups {

    ///  Returns a list of ARNs of the resources that are members of a specified resource group.
    public func listGroupResourcesPaginator(
        _ input: ListGroupResourcesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListGroupResourcesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGroupResources,
            tokenKey: \ListGroupResourcesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of existing resource groups in your account.
    public func listGroupsPaginator(
        _ input: ListGroupsInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListGroupsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGroups,
            tokenKey: \ListGroupsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of AWS resource identifiers that matches tne specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.
    public func searchResourcesPaginator(
        _ input: SearchResourcesInput,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (SearchResourcesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchResources,
            tokenKey: \SearchResourcesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension ResourceGroups.ListGroupResourcesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroups.ListGroupResourcesInput {
        return .init(
            filters: self.filters,
            group: self.group,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ResourceGroups.ListGroupsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroups.ListGroupsInput {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ResourceGroups.SearchResourcesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroups.SearchResourcesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceQuery: self.resourceQuery
        )

    }
}

