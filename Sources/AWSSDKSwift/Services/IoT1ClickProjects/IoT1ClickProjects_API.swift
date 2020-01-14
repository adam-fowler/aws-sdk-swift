// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
The AWS IoT 1-Click Projects API Reference
*/
public struct IoT1ClickProjects {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "projects.iot1click",
            signingName: "iot1click",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2018-05-14",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [IoT1ClickProjectsErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Associates a physical device with a placement.
    public func associateDeviceWithPlacement(_ input: AssociateDeviceWithPlacementRequest) -> Future<AssociateDeviceWithPlacementResponse> {
        return client.send(operation: "AssociateDeviceWithPlacement", path: "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", httpMethod: "PUT", input: input)
    }

    ///  Creates an empty placement.
    public func createPlacement(_ input: CreatePlacementRequest) -> Future<CreatePlacementResponse> {
        return client.send(operation: "CreatePlacement", path: "/projects/{projectName}/placements", httpMethod: "POST", input: input)
    }

    ///  Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.
    public func createProject(_ input: CreateProjectRequest) -> Future<CreateProjectResponse> {
        return client.send(operation: "CreateProject", path: "/projects", httpMethod: "POST", input: input)
    }

    ///  Deletes a placement. To delete a placement, it must not have any devices associated with it.  When you delete a placement, all associated data becomes irretrievable. 
    public func deletePlacement(_ input: DeletePlacementRequest) -> Future<DeletePlacementResponse> {
        return client.send(operation: "DeletePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a project. To delete a project, it must not have any placements associated with it.  When you delete a project, all associated data becomes irretrievable. 
    public func deleteProject(_ input: DeleteProjectRequest) -> Future<DeleteProjectResponse> {
        return client.send(operation: "DeleteProject", path: "/projects/{projectName}", httpMethod: "DELETE", input: input)
    }

    ///  Describes a placement in a project.
    public func describePlacement(_ input: DescribePlacementRequest) -> Future<DescribePlacementResponse> {
        return client.send(operation: "DescribePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: "GET", input: input)
    }

    ///  Returns an object describing a project.
    public func describeProject(_ input: DescribeProjectRequest) -> Future<DescribeProjectResponse> {
        return client.send(operation: "DescribeProject", path: "/projects/{projectName}", httpMethod: "GET", input: input)
    }

    ///  Removes a physical device from a placement.
    public func disassociateDeviceFromPlacement(_ input: DisassociateDeviceFromPlacementRequest) -> Future<DisassociateDeviceFromPlacementResponse> {
        return client.send(operation: "DisassociateDeviceFromPlacement", path: "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", httpMethod: "DELETE", input: input)
    }

    ///  Returns an object enumerating the devices in a placement.
    public func getDevicesInPlacement(_ input: GetDevicesInPlacementRequest) -> Future<GetDevicesInPlacementResponse> {
        return client.send(operation: "GetDevicesInPlacement", path: "/projects/{projectName}/placements/{placementName}/devices", httpMethod: "GET", input: input)
    }

    ///  Lists the placement(s) of a project.
    public func listPlacements(_ input: ListPlacementsRequest) -> Future<ListPlacementsResponse> {
        return client.send(operation: "ListPlacements", path: "/projects/{projectName}/placements", httpMethod: "GET", input: input)
    }

    ///  Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
    public func listProjects(_ input: ListProjectsRequest) -> Future<ListProjectsResponse> {
        return client.send(operation: "ListProjects", path: "/projects", httpMethod: "GET", input: input)
    }

    ///  Lists the tags (metadata key/value pairs) which you have assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> Future<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input)
    }

    ///  Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see AWS Tagging Strategies.
    public func tagResource(_ input: TagResourceRequest) -> Future<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags (metadata key/value pairs) from a resource.
    public func untagResource(_ input: UntagResourceRequest) -> Future<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input)
    }

    ///  Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., "").
    public func updatePlacement(_ input: UpdatePlacementRequest) -> Future<UpdatePlacementResponse> {
        return client.send(operation: "UpdatePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: "PUT", input: input)
    }

    ///  Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., "").
    public func updateProject(_ input: UpdateProjectRequest) -> Future<UpdateProjectResponse> {
        return client.send(operation: "UpdateProject", path: "/projects/{projectName}", httpMethod: "PUT", input: input)
    }
}
