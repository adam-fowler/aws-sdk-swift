// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Comprehend
public enum ComprehendErrorType: AWSErrorType {
    case batchSizeLimitExceededException(message: String?)
    case concurrentModificationException(message: String?)
    case internalServerException(message: String?)
    case invalidFilterException(message: String?)
    case invalidRequestException(message: String?)
    case jobNotFoundException(message: String?)
    case kmsKeyValidationException(message: String?)
    case resourceInUseException(message: String?)
    case resourceLimitExceededException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceUnavailableException(message: String?)
    case textSizeLimitExceededException(message: String?)
    case tooManyRequestsException(message: String?)
    case tooManyTagKeysException(message: String?)
    case tooManyTagsException(message: String?)
    case unsupportedLanguageException(message: String?)
}

extension ComprehendErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BatchSizeLimitExceededException":
            self = .batchSizeLimitExceededException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "InternalServerException":
            self = .internalServerException(message: message)
        case "InvalidFilterException":
            self = .invalidFilterException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "JobNotFoundException":
            self = .jobNotFoundException(message: message)
        case "KmsKeyValidationException":
            self = .kmsKeyValidationException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceLimitExceededException":
            self = .resourceLimitExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceUnavailableException":
            self = .resourceUnavailableException(message: message)
        case "TextSizeLimitExceededException":
            self = .textSizeLimitExceededException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "TooManyTagKeysException":
            self = .tooManyTagKeysException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        case "UnsupportedLanguageException":
            self = .unsupportedLanguageException(message: message)
        default:
            return nil
        }
    }
}