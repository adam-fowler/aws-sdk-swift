// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for SSM
public enum SSMErrorType: AWSErrorType {
    case alreadyExistsException(message: String?)
    case associatedInstances(message: String?)
    case associationAlreadyExists(message: String?)
    case associationDoesNotExist(message: String?)
    case associationExecutionDoesNotExist(message: String?)
    case associationLimitExceeded(message: String?)
    case associationVersionLimitExceeded(message: String?)
    case automationDefinitionNotFoundException(message: String?)
    case automationDefinitionVersionNotFoundException(message: String?)
    case automationExecutionLimitExceededException(message: String?)
    case automationExecutionNotFoundException(message: String?)
    case automationStepNotFoundException(message: String?)
    case complianceTypeCountLimitExceededException(message: String?)
    case customSchemaCountLimitExceededException(message: String?)
    case documentAlreadyExists(message: String?)
    case documentLimitExceeded(message: String?)
    case documentPermissionLimit(message: String?)
    case documentVersionLimitExceeded(message: String?)
    case doesNotExistException(message: String?)
    case duplicateDocumentContent(message: String?)
    case duplicateDocumentVersionName(message: String?)
    case duplicateInstanceId(message: String?)
    case featureNotAvailableException(message: String?)
    case hierarchyLevelLimitExceededException(message: String?)
    case hierarchyTypeMismatchException(message: String?)
    case idempotentParameterMismatch(message: String?)
    case incompatiblePolicyException(message: String?)
    case internalServerError(message: String?)
    case invalidActivation(message: String?)
    case invalidActivationId(message: String?)
    case invalidAggregatorException(message: String?)
    case invalidAllowedPatternException(message: String?)
    case invalidAssociation(message: String?)
    case invalidAssociationVersion(message: String?)
    case invalidAutomationExecutionParametersException(message: String?)
    case invalidAutomationSignalException(message: String?)
    case invalidAutomationStatusUpdateException(message: String?)
    case invalidCommandId(message: String?)
    case invalidDeleteInventoryParametersException(message: String?)
    case invalidDeletionIdException(message: String?)
    case invalidDocument(message: String?)
    case invalidDocumentContent(message: String?)
    case invalidDocumentOperation(message: String?)
    case invalidDocumentSchemaVersion(message: String?)
    case invalidDocumentVersion(message: String?)
    case invalidFilter(message: String?)
    case invalidFilterKey(message: String?)
    case invalidFilterOption(message: String?)
    case invalidFilterValue(message: String?)
    case invalidInstanceId(message: String?)
    case invalidInstanceInformationFilterValue(message: String?)
    case invalidInventoryGroupException(message: String?)
    case invalidInventoryItemContextException(message: String?)
    case invalidInventoryRequestException(message: String?)
    case invalidItemContentException(message: String?)
    case invalidKeyId(message: String?)
    case invalidNextToken(message: String?)
    case invalidNotificationConfig(message: String?)
    case invalidOptionException(message: String?)
    case invalidOutputFolder(message: String?)
    case invalidOutputLocation(message: String?)
    case invalidParameters(message: String?)
    case invalidPermissionType(message: String?)
    case invalidPluginName(message: String?)
    case invalidPolicyAttributeException(message: String?)
    case invalidPolicyTypeException(message: String?)
    case invalidResourceId(message: String?)
    case invalidResourceType(message: String?)
    case invalidResultAttributeException(message: String?)
    case invalidRole(message: String?)
    case invalidSchedule(message: String?)
    case invalidTarget(message: String?)
    case invalidTypeNameException(message: String?)
    case invalidUpdate(message: String?)
    case invocationDoesNotExist(message: String?)
    case itemContentMismatchException(message: String?)
    case itemSizeLimitExceededException(message: String?)
    case maxDocumentSizeExceeded(message: String?)
    case parameterAlreadyExists(message: String?)
    case parameterLimitExceeded(message: String?)
    case parameterMaxVersionLimitExceeded(message: String?)
    case parameterNotFound(message: String?)
    case parameterPatternMismatchException(message: String?)
    case parameterVersionLabelLimitExceeded(message: String?)
    case parameterVersionNotFound(message: String?)
    case policiesLimitExceededException(message: String?)
    case resourceDataSyncAlreadyExistsException(message: String?)
    case resourceDataSyncCountExceededException(message: String?)
    case resourceDataSyncInvalidConfigurationException(message: String?)
    case resourceDataSyncNotFoundException(message: String?)
    case resourceInUseException(message: String?)
    case resourceLimitExceededException(message: String?)
    case serviceSettingNotFound(message: String?)
    case statusUnchanged(message: String?)
    case subTypeCountLimitExceededException(message: String?)
    case targetInUseException(message: String?)
    case targetNotConnected(message: String?)
    case tooManyTagsError(message: String?)
    case tooManyUpdates(message: String?)
    case totalSizeLimitExceededException(message: String?)
    case unsupportedFeatureRequiredException(message: String?)
    case unsupportedInventoryItemContextException(message: String?)
    case unsupportedInventorySchemaVersionException(message: String?)
    case unsupportedOperatingSystem(message: String?)
    case unsupportedParameterType(message: String?)
    case unsupportedPlatformType(message: String?)
}

extension SSMErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "AssociatedInstances":
            self = .associatedInstances(message: message)
        case "AssociationAlreadyExists":
            self = .associationAlreadyExists(message: message)
        case "AssociationDoesNotExist":
            self = .associationDoesNotExist(message: message)
        case "AssociationExecutionDoesNotExist":
            self = .associationExecutionDoesNotExist(message: message)
        case "AssociationLimitExceeded":
            self = .associationLimitExceeded(message: message)
        case "AssociationVersionLimitExceeded":
            self = .associationVersionLimitExceeded(message: message)
        case "AutomationDefinitionNotFoundException":
            self = .automationDefinitionNotFoundException(message: message)
        case "AutomationDefinitionVersionNotFoundException":
            self = .automationDefinitionVersionNotFoundException(message: message)
        case "AutomationExecutionLimitExceededException":
            self = .automationExecutionLimitExceededException(message: message)
        case "AutomationExecutionNotFoundException":
            self = .automationExecutionNotFoundException(message: message)
        case "AutomationStepNotFoundException":
            self = .automationStepNotFoundException(message: message)
        case "ComplianceTypeCountLimitExceededException":
            self = .complianceTypeCountLimitExceededException(message: message)
        case "CustomSchemaCountLimitExceededException":
            self = .customSchemaCountLimitExceededException(message: message)
        case "DocumentAlreadyExists":
            self = .documentAlreadyExists(message: message)
        case "DocumentLimitExceeded":
            self = .documentLimitExceeded(message: message)
        case "DocumentPermissionLimit":
            self = .documentPermissionLimit(message: message)
        case "DocumentVersionLimitExceeded":
            self = .documentVersionLimitExceeded(message: message)
        case "DoesNotExistException":
            self = .doesNotExistException(message: message)
        case "DuplicateDocumentContent":
            self = .duplicateDocumentContent(message: message)
        case "DuplicateDocumentVersionName":
            self = .duplicateDocumentVersionName(message: message)
        case "DuplicateInstanceId":
            self = .duplicateInstanceId(message: message)
        case "FeatureNotAvailableException":
            self = .featureNotAvailableException(message: message)
        case "HierarchyLevelLimitExceededException":
            self = .hierarchyLevelLimitExceededException(message: message)
        case "HierarchyTypeMismatchException":
            self = .hierarchyTypeMismatchException(message: message)
        case "IdempotentParameterMismatch":
            self = .idempotentParameterMismatch(message: message)
        case "IncompatiblePolicyException":
            self = .incompatiblePolicyException(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "InvalidActivation":
            self = .invalidActivation(message: message)
        case "InvalidActivationId":
            self = .invalidActivationId(message: message)
        case "InvalidAggregatorException":
            self = .invalidAggregatorException(message: message)
        case "InvalidAllowedPatternException":
            self = .invalidAllowedPatternException(message: message)
        case "InvalidAssociation":
            self = .invalidAssociation(message: message)
        case "InvalidAssociationVersion":
            self = .invalidAssociationVersion(message: message)
        case "InvalidAutomationExecutionParametersException":
            self = .invalidAutomationExecutionParametersException(message: message)
        case "InvalidAutomationSignalException":
            self = .invalidAutomationSignalException(message: message)
        case "InvalidAutomationStatusUpdateException":
            self = .invalidAutomationStatusUpdateException(message: message)
        case "InvalidCommandId":
            self = .invalidCommandId(message: message)
        case "InvalidDeleteInventoryParametersException":
            self = .invalidDeleteInventoryParametersException(message: message)
        case "InvalidDeletionIdException":
            self = .invalidDeletionIdException(message: message)
        case "InvalidDocument":
            self = .invalidDocument(message: message)
        case "InvalidDocumentContent":
            self = .invalidDocumentContent(message: message)
        case "InvalidDocumentOperation":
            self = .invalidDocumentOperation(message: message)
        case "InvalidDocumentSchemaVersion":
            self = .invalidDocumentSchemaVersion(message: message)
        case "InvalidDocumentVersion":
            self = .invalidDocumentVersion(message: message)
        case "InvalidFilter":
            self = .invalidFilter(message: message)
        case "InvalidFilterKey":
            self = .invalidFilterKey(message: message)
        case "InvalidFilterOption":
            self = .invalidFilterOption(message: message)
        case "InvalidFilterValue":
            self = .invalidFilterValue(message: message)
        case "InvalidInstanceId":
            self = .invalidInstanceId(message: message)
        case "InvalidInstanceInformationFilterValue":
            self = .invalidInstanceInformationFilterValue(message: message)
        case "InvalidInventoryGroupException":
            self = .invalidInventoryGroupException(message: message)
        case "InvalidInventoryItemContextException":
            self = .invalidInventoryItemContextException(message: message)
        case "InvalidInventoryRequestException":
            self = .invalidInventoryRequestException(message: message)
        case "InvalidItemContentException":
            self = .invalidItemContentException(message: message)
        case "InvalidKeyId":
            self = .invalidKeyId(message: message)
        case "InvalidNextToken":
            self = .invalidNextToken(message: message)
        case "InvalidNotificationConfig":
            self = .invalidNotificationConfig(message: message)
        case "InvalidOptionException":
            self = .invalidOptionException(message: message)
        case "InvalidOutputFolder":
            self = .invalidOutputFolder(message: message)
        case "InvalidOutputLocation":
            self = .invalidOutputLocation(message: message)
        case "InvalidParameters":
            self = .invalidParameters(message: message)
        case "InvalidPermissionType":
            self = .invalidPermissionType(message: message)
        case "InvalidPluginName":
            self = .invalidPluginName(message: message)
        case "InvalidPolicyAttributeException":
            self = .invalidPolicyAttributeException(message: message)
        case "InvalidPolicyTypeException":
            self = .invalidPolicyTypeException(message: message)
        case "InvalidResourceId":
            self = .invalidResourceId(message: message)
        case "InvalidResourceType":
            self = .invalidResourceType(message: message)
        case "InvalidResultAttributeException":
            self = .invalidResultAttributeException(message: message)
        case "InvalidRole":
            self = .invalidRole(message: message)
        case "InvalidSchedule":
            self = .invalidSchedule(message: message)
        case "InvalidTarget":
            self = .invalidTarget(message: message)
        case "InvalidTypeNameException":
            self = .invalidTypeNameException(message: message)
        case "InvalidUpdate":
            self = .invalidUpdate(message: message)
        case "InvocationDoesNotExist":
            self = .invocationDoesNotExist(message: message)
        case "ItemContentMismatchException":
            self = .itemContentMismatchException(message: message)
        case "ItemSizeLimitExceededException":
            self = .itemSizeLimitExceededException(message: message)
        case "MaxDocumentSizeExceeded":
            self = .maxDocumentSizeExceeded(message: message)
        case "ParameterAlreadyExists":
            self = .parameterAlreadyExists(message: message)
        case "ParameterLimitExceeded":
            self = .parameterLimitExceeded(message: message)
        case "ParameterMaxVersionLimitExceeded":
            self = .parameterMaxVersionLimitExceeded(message: message)
        case "ParameterNotFound":
            self = .parameterNotFound(message: message)
        case "ParameterPatternMismatchException":
            self = .parameterPatternMismatchException(message: message)
        case "ParameterVersionLabelLimitExceeded":
            self = .parameterVersionLabelLimitExceeded(message: message)
        case "ParameterVersionNotFound":
            self = .parameterVersionNotFound(message: message)
        case "PoliciesLimitExceededException":
            self = .policiesLimitExceededException(message: message)
        case "ResourceDataSyncAlreadyExistsException":
            self = .resourceDataSyncAlreadyExistsException(message: message)
        case "ResourceDataSyncCountExceededException":
            self = .resourceDataSyncCountExceededException(message: message)
        case "ResourceDataSyncInvalidConfigurationException":
            self = .resourceDataSyncInvalidConfigurationException(message: message)
        case "ResourceDataSyncNotFoundException":
            self = .resourceDataSyncNotFoundException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceLimitExceededException":
            self = .resourceLimitExceededException(message: message)
        case "ServiceSettingNotFound":
            self = .serviceSettingNotFound(message: message)
        case "StatusUnchanged":
            self = .statusUnchanged(message: message)
        case "SubTypeCountLimitExceededException":
            self = .subTypeCountLimitExceededException(message: message)
        case "TargetInUseException":
            self = .targetInUseException(message: message)
        case "TargetNotConnected":
            self = .targetNotConnected(message: message)
        case "TooManyTagsError":
            self = .tooManyTagsError(message: message)
        case "TooManyUpdates":
            self = .tooManyUpdates(message: message)
        case "TotalSizeLimitExceededException":
            self = .totalSizeLimitExceededException(message: message)
        case "UnsupportedFeatureRequiredException":
            self = .unsupportedFeatureRequiredException(message: message)
        case "UnsupportedInventoryItemContextException":
            self = .unsupportedInventoryItemContextException(message: message)
        case "UnsupportedInventorySchemaVersionException":
            self = .unsupportedInventorySchemaVersionException(message: message)
        case "UnsupportedOperatingSystem":
            self = .unsupportedOperatingSystem(message: message)
        case "UnsupportedParameterType":
            self = .unsupportedParameterType(message: message)
        case "UnsupportedPlatformType":
            self = .unsupportedPlatformType(message: message)
        default:
            return nil
        }
    }
}