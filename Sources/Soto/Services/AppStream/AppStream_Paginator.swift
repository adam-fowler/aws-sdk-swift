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

// MARK: Paginators

extension AppStream {

    ///  Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own. 
    public func describeImagePermissionsPaginator(
        _ input: DescribeImagePermissionsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeImagePermissionsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeImagePermissions,
            tokenKey: \DescribeImagePermissionsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided. Otherwise, all images in the account are described.
    public func describeImagesPaginator(
        _ input: DescribeImagesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeImagesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeImages,
            tokenKey: \DescribeImagesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension AppStream.DescribeImagePermissionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppStream.DescribeImagePermissionsRequest {
        return .init(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            sharedAwsAccountIds: self.sharedAwsAccountIds
        )

    }
}

extension AppStream.DescribeImagesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> AppStream.DescribeImagesRequest {
        return .init(
            arns: self.arns,
            maxResults: self.maxResults,
            names: self.names,
            nextToken: token,
            type: self.type
        )

    }
}
