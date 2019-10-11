// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for LakeFormation
public enum LakeFormationErrorType: AWSErrorType {
    case alreadyExistsException(message: String?)
    case concurrentModificationException(message: String?)
    case entityNotFoundException(message: String?)
    case internalServiceException(message: String?)
    case invalidInputException(message: String?)
    case operationTimeoutException(message: String?)
}

extension LakeFormationErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "EntityNotFoundException":
            self = .entityNotFoundException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "OperationTimeoutException":
            self = .operationTimeoutException(message: message)
        default:
            return nil
        }
    }
}

extension LakeFormationErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .alreadyExistsException(let message):
            return "AlreadyExistsException: \(message ?? "")"
        case .concurrentModificationException(let message):
            return "ConcurrentModificationException: \(message ?? "")"
        case .entityNotFoundException(let message):
            return "EntityNotFoundException: \(message ?? "")"
        case .internalServiceException(let message):
            return "InternalServiceException: \(message ?? "")"
        case .invalidInputException(let message):
            return "InvalidInputException: \(message ?? "")"
        case .operationTimeoutException(let message):
            return "OperationTimeoutException: \(message ?? "")"
        }
    }
}
