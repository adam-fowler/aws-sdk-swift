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
Client object for interacting with AWS DataExchange service.

This is the API reference for AWS Data Exchange.
*/
public struct DataExchange: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the DataExchange client
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
            service: "dataexchange",
            serviceProtocol: .restjson,
            apiVersion: "2017-07-25",
            endpoint: endpoint,
            possibleErrorTypes: [DataExchangeErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }
    
    // MARK: API Calls

    ///  This operation cancels a job. Jobs can be cancelled only when they are in the WAITING state.
    @discardableResult public func cancelJob(_ input: CancelJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "CancelJob", path: "/v1/jobs/{JobId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation creates a data set.
    public func createDataSet(_ input: CreateDataSetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateDataSetResponse> {
        return self.client.execute(operation: "CreateDataSet", path: "/v1/data-sets", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation creates a job.
    public func createJob(_ input: CreateJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateJobResponse> {
        return self.client.execute(operation: "CreateJob", path: "/v1/jobs", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation creates a revision for a data set.
    public func createRevision(_ input: CreateRevisionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateRevisionResponse> {
        return self.client.execute(operation: "CreateRevision", path: "/v1/data-sets/{DataSetId}/revisions", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation deletes an asset.
    @discardableResult public func deleteAsset(_ input: DeleteAssetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteAsset", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation deletes a data set.
    @discardableResult public func deleteDataSet(_ input: DeleteDataSetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteDataSet", path: "/v1/data-sets/{DataSetId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation deletes a revision.
    @discardableResult public func deleteRevision(_ input: DeleteRevisionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteRevision", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation returns information about an asset.
    public func getAsset(_ input: GetAssetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetAssetResponse> {
        return self.client.execute(operation: "GetAsset", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation returns information about a data set.
    public func getDataSet(_ input: GetDataSetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDataSetResponse> {
        return self.client.execute(operation: "GetDataSet", path: "/v1/data-sets/{DataSetId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation returns information about a job.
    public func getJob(_ input: GetJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetJobResponse> {
        return self.client.execute(operation: "GetJob", path: "/v1/jobs/{JobId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation returns information about a revision.
    public func getRevision(_ input: GetRevisionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetRevisionResponse> {
        return self.client.execute(operation: "GetRevision", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation lists a data set's revisions sorted by CreatedAt in descending order.
    public func listDataSetRevisions(_ input: ListDataSetRevisionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDataSetRevisionsResponse> {
        return self.client.execute(operation: "ListDataSetRevisions", path: "/v1/data-sets/{DataSetId}/revisions", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation lists your data sets. When listing by origin OWNED, results are sorted by CreatedAt in descending order. When listing by origin ENTITLED, there is no order and the maxResults parameter is ignored.
    public func listDataSets(_ input: ListDataSetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDataSetsResponse> {
        return self.client.execute(operation: "ListDataSets", path: "/v1/data-sets", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation lists your jobs sorted by CreatedAt in descending order.
    public func listJobs(_ input: ListJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListJobsResponse> {
        return self.client.execute(operation: "ListJobs", path: "/v1/jobs", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation lists a revision's assets sorted alphabetically in descending order.
    public func listRevisionAssets(_ input: ListRevisionAssetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListRevisionAssetsResponse> {
        return self.client.execute(operation: "ListRevisionAssets", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation lists the tags on the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resource-arn}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation starts a job.
    public func startJob(_ input: StartJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartJobResponse> {
        return self.client.execute(operation: "StartJob", path: "/v1/jobs/{JobId}", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation tags a resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resource-arn}", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation removes one or more tags from a resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resource-arn}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation updates an asset.
    public func updateAsset(_ input: UpdateAssetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateAssetResponse> {
        return self.client.execute(operation: "UpdateAsset", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation updates a data set.
    public func updateDataSet(_ input: UpdateDataSetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateDataSetResponse> {
        return self.client.execute(operation: "UpdateDataSet", path: "/v1/data-sets/{DataSetId}", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  This operation updates a revision.
    public func updateRevision(_ input: UpdateRevisionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateRevisionResponse> {
        return self.client.execute(operation: "UpdateRevision", path: "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }
}