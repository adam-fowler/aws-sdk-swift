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

extension GroundStation {

    ///  Returns a list of Config objects.
    public func listConfigsPaginator(
        _ input: ListConfigsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListConfigsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listConfigs,
            tokenKey: \ListConfigsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of contacts. If statusList contains AVAILABLE, the request must include groundStation, missionprofileArn, and satelliteArn. 
    public func listContactsPaginator(
        _ input: ListContactsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListContactsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listContacts,
            tokenKey: \ListContactsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of DataflowEndpoint groups.
    public func listDataflowEndpointGroupsPaginator(
        _ input: ListDataflowEndpointGroupsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListDataflowEndpointGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDataflowEndpointGroups,
            tokenKey: \ListDataflowEndpointGroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of ground stations. 
    public func listGroundStationsPaginator(
        _ input: ListGroundStationsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListGroundStationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGroundStations,
            tokenKey: \ListGroundStationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of mission profiles.
    public func listMissionProfilesPaginator(
        _ input: ListMissionProfilesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListMissionProfilesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMissionProfiles,
            tokenKey: \ListMissionProfilesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of satellites.
    public func listSatellitesPaginator(
        _ input: ListSatellitesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListSatellitesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listSatellites,
            tokenKey: \ListSatellitesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

}

extension GroundStation.ListConfigsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListConfigsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension GroundStation.ListContactsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListContactsRequest {
        return .init(
            endTime: self.endTime,
            groundStation: self.groundStation,
            maxResults: self.maxResults,
            missionProfileArn: self.missionProfileArn,
            nextToken: token,
            satelliteArn: self.satelliteArn,
            startTime: self.startTime,
            statusList: self.statusList
        )

    }
}

extension GroundStation.ListDataflowEndpointGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListDataflowEndpointGroupsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension GroundStation.ListGroundStationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListGroundStationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            satelliteId: self.satelliteId
        )

    }
}

extension GroundStation.ListMissionProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListMissionProfilesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension GroundStation.ListSatellitesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GroundStation.ListSatellitesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}
