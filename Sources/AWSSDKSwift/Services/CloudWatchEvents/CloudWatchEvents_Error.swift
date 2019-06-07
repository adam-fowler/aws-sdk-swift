// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CloudWatchEvents
public enum CloudWatchEventsErrorType: AWSErrorType {
    case concurrentModificationException(message: String?)
    case internalException(message: String?)
    case invalidEventPatternException(message: String?)
    case limitExceededException(message: String?)
    case managedRuleException(message: String?)
    case policyLengthExceededException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension CloudWatchEventsErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "InternalException":
            self = .internalException(message: message)
        case "InvalidEventPatternException":
            self = .invalidEventPatternException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ManagedRuleException":
            self = .managedRuleException(message: message)
        case "PolicyLengthExceededException":
            self = .policyLengthExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}