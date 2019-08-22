// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Describes all of the AWS IoT 1-Click device-related API operations for the service.
 Also provides sample requests, responses, and errors for the supported web services
 protocols.
*/
public struct IoT1ClickDevicesService {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "devices.iot1click",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-05-14",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [IoT1ClickDevicesServiceErrorType.self]
        )
    }

    ///  Adds device(s) to your account (i.e., claim one or more devices) if and only if you
    ///   received a claim code with the device(s).
    public func claimDevicesByClaimCode(_ input: ClaimDevicesByClaimCodeRequest) throws -> Future<ClaimDevicesByClaimCodeResponse> {
        return try client.send(operation: "ClaimDevicesByClaimCode", path: "/claims/{claimCode}", httpMethod: "PUT", input: input)
    }

    ///  Given a device ID, returns a DescribeDeviceResponse object describing the
    ///   details of the device.
    public func describeDevice(_ input: DescribeDeviceRequest) throws -> Future<DescribeDeviceResponse> {
        return try client.send(operation: "DescribeDevice", path: "/devices/{deviceId}", httpMethod: "GET", input: input)
    }

    ///  Given a device ID, finalizes the claim request for the associated device.
    ///   Claiming a device consists of initiating a claim, then publishing a device event,
    ///   and finalizing the claim. For a device of type button, a device event can
    ///   be published by simply clicking the device.
    ///   
    public func finalizeDeviceClaim(_ input: FinalizeDeviceClaimRequest) throws -> Future<FinalizeDeviceClaimResponse> {
        return try client.send(operation: "FinalizeDeviceClaim", path: "/devices/{deviceId}/finalize-claim", httpMethod: "PUT", input: input)
    }

    ///  Given a device ID, returns the invokable methods associated with the device.
    public func getDeviceMethods(_ input: GetDeviceMethodsRequest) throws -> Future<GetDeviceMethodsResponse> {
        return try client.send(operation: "GetDeviceMethods", path: "/devices/{deviceId}/methods", httpMethod: "GET", input: input)
    }

    ///  Given a device ID, initiates a claim request for the associated device.
    ///   Claiming a device consists of initiating a claim, then publishing a device event,
    ///   and finalizing the claim. For a device of type button, a device event can
    ///   be published by simply clicking the device.
    ///   
    public func initiateDeviceClaim(_ input: InitiateDeviceClaimRequest) throws -> Future<InitiateDeviceClaimResponse> {
        return try client.send(operation: "InitiateDeviceClaim", path: "/devices/{deviceId}/initiate-claim", httpMethod: "PUT", input: input)
    }

    ///  Given a device ID, issues a request to invoke a named device method (with possible
    ///   parameters). See the "Example POST" code snippet below.
    public func invokeDeviceMethod(_ input: InvokeDeviceMethodRequest) throws -> Future<InvokeDeviceMethodResponse> {
        return try client.send(operation: "InvokeDeviceMethod", path: "/devices/{deviceId}/methods", httpMethod: "POST", input: input)
    }

    ///  Using a device ID, returns a DeviceEventsResponse object containing an
    ///   array of events for the device.
    public func listDeviceEvents(_ input: ListDeviceEventsRequest) throws -> Future<ListDeviceEventsResponse> {
        return try client.send(operation: "ListDeviceEvents", path: "/devices/{deviceId}/events", httpMethod: "GET", input: input)
    }

    ///  Lists the 1-Click compatible devices associated with your AWS account.
    public func listDevices(_ input: ListDevicesRequest) throws -> Future<ListDevicesResponse> {
        return try client.send(operation: "ListDevices", path: "/devices", httpMethod: "GET", input: input)
    }

    ///  Lists the tags associated with the specified resource ARN.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/tags/{resource-arn}", httpMethod: "GET", input: input)
    }

    ///  Adds or updates the tags associated with the resource ARN. See AWS IoT 1-Click Service Limits for the maximum number of tags allowed per
    ///   resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest) throws -> Future<Void> {
        return try client.send(operation: "TagResource", path: "/tags/{resource-arn}", httpMethod: "POST", input: input)
    }

    ///  Disassociates a device from your AWS account using its device ID.
    public func unclaimDevice(_ input: UnclaimDeviceRequest) throws -> Future<UnclaimDeviceResponse> {
        return try client.send(operation: "UnclaimDevice", path: "/devices/{deviceId}/unclaim", httpMethod: "PUT", input: input)
    }

    ///  Using tag keys, deletes the tags (key/value pairs) associated with the specified
    ///   resource ARN.
    @discardableResult public func untagResource(_ input: UntagResourceRequest) throws -> Future<Void> {
        return try client.send(operation: "UntagResource", path: "/tags/{resource-arn}", httpMethod: "DELETE", input: input)
    }

    ///  Using a Boolean value (true or false), this operation
    ///   enables or disables the device given a device ID.
    public func updateDeviceState(_ input: UpdateDeviceStateRequest) throws -> Future<UpdateDeviceStateResponse> {
        return try client.send(operation: "UpdateDeviceState", path: "/devices/{deviceId}/state", httpMethod: "PUT", input: input)
    }
}
