// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
AWS Device Farm is a service that enables mobile app developers to test Android, iOS, and Fire OS apps on physical phones, tablets, and other devices in the cloud.
*/
public struct DeviceFarm {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "DeviceFarm_20150623",
            service: "devicefarm",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-06-23",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [DeviceFarmErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Creates a device pool.
    public func createDevicePool(_ input: CreateDevicePoolRequest) -> Future<CreateDevicePoolResult> {
        return client.send(operation: "CreateDevicePool", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a profile that can be applied to one or more private fleet device instances.
    public func createInstanceProfile(_ input: CreateInstanceProfileRequest) -> Future<CreateInstanceProfileResult> {
        return client.send(operation: "CreateInstanceProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a network profile.
    public func createNetworkProfile(_ input: CreateNetworkProfileRequest) -> Future<CreateNetworkProfileResult> {
        return client.send(operation: "CreateNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new project.
    public func createProject(_ input: CreateProjectRequest) -> Future<CreateProjectResult> {
        return client.send(operation: "CreateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Specifies and starts a remote access session.
    public func createRemoteAccessSession(_ input: CreateRemoteAccessSessionRequest) -> Future<CreateRemoteAccessSessionResult> {
        return client.send(operation: "CreateRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Uploads an app or test scripts.
    public func createUpload(_ input: CreateUploadRequest) -> Future<CreateUploadResult> {
        return client.send(operation: "CreateUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a configuration record in Device Farm for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func createVPCEConfiguration(_ input: CreateVPCEConfigurationRequest) -> Future<CreateVPCEConfigurationResult> {
        return client.send(operation: "CreateVPCEConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a device pool given the pool ARN. Does not allow deletion of curated pools owned by the system.
    public func deleteDevicePool(_ input: DeleteDevicePoolRequest) -> Future<DeleteDevicePoolResult> {
        return client.send(operation: "DeleteDevicePool", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a profile that can be applied to one or more private device instances.
    public func deleteInstanceProfile(_ input: DeleteInstanceProfileRequest) -> Future<DeleteInstanceProfileResult> {
        return client.send(operation: "DeleteInstanceProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a network profile.
    public func deleteNetworkProfile(_ input: DeleteNetworkProfileRequest) -> Future<DeleteNetworkProfileResult> {
        return client.send(operation: "DeleteNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an AWS Device Farm project, given the project ARN.  Note Deleting this resource does not stop an in-progress run.
    public func deleteProject(_ input: DeleteProjectRequest) -> Future<DeleteProjectResult> {
        return client.send(operation: "DeleteProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a completed remote access session and its results.
    public func deleteRemoteAccessSession(_ input: DeleteRemoteAccessSessionRequest) -> Future<DeleteRemoteAccessSessionResult> {
        return client.send(operation: "DeleteRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the run, given the run ARN.  Note Deleting this resource does not stop an in-progress run.
    public func deleteRun(_ input: DeleteRunRequest) -> Future<DeleteRunResult> {
        return client.send(operation: "DeleteRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an upload given the upload ARN.
    public func deleteUpload(_ input: DeleteUploadRequest) -> Future<DeleteUploadResult> {
        return client.send(operation: "DeleteUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a configuration for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func deleteVPCEConfiguration(_ input: DeleteVPCEConfigurationRequest) -> Future<DeleteVPCEConfigurationResult> {
        return client.send(operation: "DeleteVPCEConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the number of unmetered iOS and/or unmetered Android devices that have been purchased by the account.
    public func getAccountSettings(_ input: GetAccountSettingsRequest) -> Future<GetAccountSettingsResult> {
        return client.send(operation: "GetAccountSettings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a unique device type.
    public func getDevice(_ input: GetDeviceRequest) -> Future<GetDeviceResult> {
        return client.send(operation: "GetDevice", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a device instance belonging to a private device fleet.
    public func getDeviceInstance(_ input: GetDeviceInstanceRequest) -> Future<GetDeviceInstanceResult> {
        return client.send(operation: "GetDeviceInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a device pool.
    public func getDevicePool(_ input: GetDevicePoolRequest) -> Future<GetDevicePoolResult> {
        return client.send(operation: "GetDevicePool", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about compatibility with a device pool.
    public func getDevicePoolCompatibility(_ input: GetDevicePoolCompatibilityRequest) -> Future<GetDevicePoolCompatibilityResult> {
        return client.send(operation: "GetDevicePoolCompatibility", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the specified instance profile.
    public func getInstanceProfile(_ input: GetInstanceProfileRequest) -> Future<GetInstanceProfileResult> {
        return client.send(operation: "GetInstanceProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a job.
    public func getJob(_ input: GetJobRequest) -> Future<GetJobResult> {
        return client.send(operation: "GetJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a network profile.
    public func getNetworkProfile(_ input: GetNetworkProfileRequest) -> Future<GetNetworkProfileResult> {
        return client.send(operation: "GetNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the current status and future status of all offerings purchased by an AWS account. The response indicates how many offerings are currently available and the offerings that will be available in the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. Please contact aws-devicefarm-support@amazon.com if you believe that you should be able to invoke this operation.
    public func getOfferingStatus(_ input: GetOfferingStatusRequest) -> Future<GetOfferingStatusResult> {
        return client.send(operation: "GetOfferingStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a project.
    public func getProject(_ input: GetProjectRequest) -> Future<GetProjectResult> {
        return client.send(operation: "GetProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a link to a currently running remote access session.
    public func getRemoteAccessSession(_ input: GetRemoteAccessSessionRequest) -> Future<GetRemoteAccessSessionResult> {
        return client.send(operation: "GetRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a run.
    public func getRun(_ input: GetRunRequest) -> Future<GetRunResult> {
        return client.send(operation: "GetRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a suite.
    public func getSuite(_ input: GetSuiteRequest) -> Future<GetSuiteResult> {
        return client.send(operation: "GetSuite", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about a test.
    public func getTest(_ input: GetTestRequest) -> Future<GetTestResult> {
        return client.send(operation: "GetTest", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about an upload.
    public func getUpload(_ input: GetUploadRequest) -> Future<GetUploadResult> {
        return client.send(operation: "GetUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the configuration settings for your Amazon Virtual Private Cloud (VPC) endpoint.
    public func getVPCEConfiguration(_ input: GetVPCEConfigurationRequest) -> Future<GetVPCEConfigurationResult> {
        return client.send(operation: "GetVPCEConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Installs an application to the device in a remote access session. For Android applications, the file must be in .apk format. For iOS applications, the file must be in .ipa format.
    public func installToRemoteAccessSession(_ input: InstallToRemoteAccessSessionRequest) -> Future<InstallToRemoteAccessSessionResult> {
        return client.send(operation: "InstallToRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about artifacts.
    public func listArtifacts(_ input: ListArtifactsRequest) -> Future<ListArtifactsResult> {
        return client.send(operation: "ListArtifacts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about the private device instances associated with one or more AWS accounts.
    public func listDeviceInstances(_ input: ListDeviceInstancesRequest) -> Future<ListDeviceInstancesResult> {
        return client.send(operation: "ListDeviceInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about device pools.
    public func listDevicePools(_ input: ListDevicePoolsRequest) -> Future<ListDevicePoolsResult> {
        return client.send(operation: "ListDevicePools", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about unique device types.
    public func listDevices(_ input: ListDevicesRequest) -> Future<ListDevicesResult> {
        return client.send(operation: "ListDevices", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all the instance profiles in an AWS account.
    public func listInstanceProfiles(_ input: ListInstanceProfilesRequest) -> Future<ListInstanceProfilesResult> {
        return client.send(operation: "ListInstanceProfiles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about jobs for a given test run.
    public func listJobs(_ input: ListJobsRequest) -> Future<ListJobsResult> {
        return client.send(operation: "ListJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the list of available network profiles.
    public func listNetworkProfiles(_ input: ListNetworkProfilesRequest) -> Future<ListNetworkProfilesResult> {
        return client.send(operation: "ListNetworkProfiles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of offering promotions. Each offering promotion record contains the ID and description of the promotion. The API returns a NotEligible error if the caller is not permitted to invoke the operation. Contact aws-devicefarm-support@amazon.com if you believe that you should be able to invoke this operation.
    public func listOfferingPromotions(_ input: ListOfferingPromotionsRequest) -> Future<ListOfferingPromotionsResult> {
        return client.send(operation: "ListOfferingPromotions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS account. The list is paginated and ordered by a descending timestamp (most recent transactions are first). The API returns a NotEligible error if the user is not permitted to invoke the operation. Please contact aws-devicefarm-support@amazon.com if you believe that you should be able to invoke this operation.
    public func listOfferingTransactions(_ input: ListOfferingTransactionsRequest) -> Future<ListOfferingTransactionsResult> {
        return client.send(operation: "ListOfferingTransactions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of products or offerings that the user can manage through the API. Each offering record indicates the recurring price per unit and the frequency for that offering. The API returns a NotEligible error if the user is not permitted to invoke the operation. Please contact aws-devicefarm-support@amazon.com if you believe that you should be able to invoke this operation.
    public func listOfferings(_ input: ListOfferingsRequest) -> Future<ListOfferingsResult> {
        return client.send(operation: "ListOfferings", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about projects.
    public func listProjects(_ input: ListProjectsRequest) -> Future<ListProjectsResult> {
        return client.send(operation: "ListProjects", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a list of all currently running remote access sessions.
    public func listRemoteAccessSessions(_ input: ListRemoteAccessSessionsRequest) -> Future<ListRemoteAccessSessionsResult> {
        return client.send(operation: "ListRemoteAccessSessions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about runs, given an AWS Device Farm project ARN.
    public func listRuns(_ input: ListRunsRequest) -> Future<ListRunsResult> {
        return client.send(operation: "ListRuns", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about samples, given an AWS Device Farm job ARN.
    public func listSamples(_ input: ListSamplesRequest) -> Future<ListSamplesResult> {
        return client.send(operation: "ListSamples", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about test suites for a given job.
    public func listSuites(_ input: ListSuitesRequest) -> Future<ListSuitesResult> {
        return client.send(operation: "ListSuites", path: "/", httpMethod: "POST", input: input)
    }

    ///  List the tags for an AWS Device Farm resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> Future<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about tests in a given test suite.
    public func listTests(_ input: ListTestsRequest) -> Future<ListTestsResult> {
        return client.send(operation: "ListTests", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about unique problems.
    public func listUniqueProblems(_ input: ListUniqueProblemsRequest) -> Future<ListUniqueProblemsResult> {
        return client.send(operation: "ListUniqueProblems", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets information about uploads, given an AWS Device Farm project ARN.
    public func listUploads(_ input: ListUploadsRequest) -> Future<ListUploadsResult> {
        return client.send(operation: "ListUploads", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about all Amazon Virtual Private Cloud (VPC) endpoint configurations in the AWS account.
    public func listVPCEConfigurations(_ input: ListVPCEConfigurationsRequest) -> Future<ListVPCEConfigurationsResult> {
        return client.send(operation: "ListVPCEConfigurations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Immediately purchases offerings for an AWS account. Offerings renew with the latest total purchased quantity for an offering, unless the renewal was overridden. The API returns a NotEligible error if the user is not permitted to invoke the operation. Please contact aws-devicefarm-support@amazon.com if you believe that you should be able to invoke this operation.
    public func purchaseOffering(_ input: PurchaseOfferingRequest) -> Future<PurchaseOfferingResult> {
        return client.send(operation: "PurchaseOffering", path: "/", httpMethod: "POST", input: input)
    }

    ///  Explicitly sets the quantity of devices to renew for an offering, starting from the effectiveDate of the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. Please contact aws-devicefarm-support@amazon.com if you believe that you should be able to invoke this operation.
    public func renewOffering(_ input: RenewOfferingRequest) -> Future<RenewOfferingResult> {
        return client.send(operation: "RenewOffering", path: "/", httpMethod: "POST", input: input)
    }

    ///  Schedules a run.
    public func scheduleRun(_ input: ScheduleRunRequest) -> Future<ScheduleRunResult> {
        return client.send(operation: "ScheduleRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Initiates a stop request for the current job. AWS Device Farm will immediately stop the job on the device where tests have not started executing, and you will not be billed for this device. On the device where tests have started executing, Setup Suite and Teardown Suite tests will run to completion before stopping execution on the device. You will be billed for Setup, Teardown, and any tests that were in progress or already completed.
    public func stopJob(_ input: StopJobRequest) -> Future<StopJobResult> {
        return client.send(operation: "StopJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Ends a specified remote access session.
    public func stopRemoteAccessSession(_ input: StopRemoteAccessSessionRequest) -> Future<StopRemoteAccessSessionResult> {
        return client.send(operation: "StopRemoteAccessSession", path: "/", httpMethod: "POST", input: input)
    }

    ///  Initiates a stop request for the current test run. AWS Device Farm will immediately stop the run on devices where tests have not started executing, and you will not be billed for these devices. On devices where tests have started executing, Setup Suite and Teardown Suite tests will run to completion before stopping execution on those devices. You will be billed for Setup, Teardown, and any tests that were in progress or already completed.
    public func stopRun(_ input: StopRunRequest) -> Future<StopRunResult> {
        return client.send(operation: "StopRun", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.
    public func tagResource(_ input: TagResourceRequest) -> Future<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified tags from a resource.
    public func untagResource(_ input: UntagResourceRequest) -> Future<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates information about an existing private device instance.
    public func updateDeviceInstance(_ input: UpdateDeviceInstanceRequest) -> Future<UpdateDeviceInstanceResult> {
        return client.send(operation: "UpdateDeviceInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the name, description, and rules in a device pool given the attributes and the pool ARN. Rule updates are all-or-nothing, meaning they can only be updated as a whole (or not at all).
    public func updateDevicePool(_ input: UpdateDevicePoolRequest) -> Future<UpdateDevicePoolResult> {
        return client.send(operation: "UpdateDevicePool", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates information about an existing private device instance profile.
    public func updateInstanceProfile(_ input: UpdateInstanceProfileRequest) -> Future<UpdateInstanceProfileResult> {
        return client.send(operation: "UpdateInstanceProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the network profile with specific settings.
    public func updateNetworkProfile(_ input: UpdateNetworkProfileRequest) -> Future<UpdateNetworkProfileResult> {
        return client.send(operation: "UpdateNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Modifies the specified project name, given the project ARN and a new name.
    public func updateProject(_ input: UpdateProjectRequest) -> Future<UpdateProjectResult> {
        return client.send(operation: "UpdateProject", path: "/", httpMethod: "POST", input: input)
    }

    ///  Update an uploaded test specification (test spec).
    public func updateUpload(_ input: UpdateUploadRequest) -> Future<UpdateUploadResult> {
        return client.send(operation: "UpdateUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates information about an existing Amazon Virtual Private Cloud (VPC) endpoint configuration.
    public func updateVPCEConfiguration(_ input: UpdateVPCEConfigurationRequest) -> Future<UpdateVPCEConfigurationResult> {
        return client.send(operation: "UpdateVPCEConfiguration", path: "/", httpMethod: "POST", input: input)
    }
}
