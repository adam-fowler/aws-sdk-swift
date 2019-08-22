// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension MarketplaceCommerceAnalytics {

    public enum DataSetType: String, CustomStringConvertible, Codable {
        case customerSubscriberHourlyMonthlySubscriptions = "customer_subscriber_hourly_monthly_subscriptions"
        case customerSubscriberAnnualSubscriptions = "customer_subscriber_annual_subscriptions"
        case dailyBusinessUsageByInstanceType = "daily_business_usage_by_instance_type"
        case dailyBusinessFees = "daily_business_fees"
        case dailyBusinessFreeTrialConversions = "daily_business_free_trial_conversions"
        case dailyBusinessNewInstances = "daily_business_new_instances"
        case dailyBusinessNewProductSubscribers = "daily_business_new_product_subscribers"
        case dailyBusinessCanceledProductSubscribers = "daily_business_canceled_product_subscribers"
        case monthlyRevenueBillingAndRevenueData = "monthly_revenue_billing_and_revenue_data"
        case monthlyRevenueAnnualSubscriptions = "monthly_revenue_annual_subscriptions"
        case disbursedAmountByProduct = "disbursed_amount_by_product"
        case disbursedAmountByProductWithUncollectedFunds = "disbursed_amount_by_product_with_uncollected_funds"
        case disbursedAmountByInstanceHours = "disbursed_amount_by_instance_hours"
        case disbursedAmountByCustomerGeo = "disbursed_amount_by_customer_geo"
        case disbursedAmountByAgeOfUncollectedFunds = "disbursed_amount_by_age_of_uncollected_funds"
        case disbursedAmountByAgeOfDisbursedFunds = "disbursed_amount_by_age_of_disbursed_funds"
        case customerProfileByIndustry = "customer_profile_by_industry"
        case customerProfileByRevenue = "customer_profile_by_revenue"
        case customerProfileByGeography = "customer_profile_by_geography"
        case salesCompensationBilledRevenue = "sales_compensation_billed_revenue"
        case usSalesAndUseTaxRecords = "us_sales_and_use_tax_records"
        public var description: String { return self.rawValue }
    }

    public struct GenerateDataSetRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "customerDefinedValues", required: false, type: .map), 
            AWSShapeMember(label: "dataSetPublicationDate", required: true, type: .timestamp), 
            AWSShapeMember(label: "dataSetType", required: true, type: .enum), 
            AWSShapeMember(label: "destinationS3BucketName", required: true, type: .string), 
            AWSShapeMember(label: "destinationS3Prefix", required: false, type: .string), 
            AWSShapeMember(label: "roleNameArn", required: true, type: .string), 
            AWSShapeMember(label: "snsTopicArn", required: true, type: .string)
        ]

        /// (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file. These key-value pairs can be used to correlated responses with tracking information from other systems.
        public let customerDefinedValues: [String: String]?
        /// The date a data set was published. For daily data sets, provide a date with day-level granularity for the desired day. For weekly data sets, provide a date with day-level granularity within the desired week (the day value will be ignored). For monthly data sets, provide a date with month-level granularity for the desired month (the day value will be ignored).
        public let dataSetPublicationDate: TimeStamp
        /// The desired data set type.    customer_subscriber_hourly_monthly_subscriptions From 2014-07-21 to present: Available daily by 5:00 PM Pacific Time.   customer_subscriber_annual_subscriptions From 2014-07-21 to present: Available daily by 5:00 PM Pacific Time.   daily_business_usage_by_instance_type From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.   daily_business_fees From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.   daily_business_free_trial_conversions From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.   daily_business_new_instances From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.   daily_business_new_product_subscribers From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.   daily_business_canceled_product_subscribers From 2015-01-26 to present: Available daily by 5:00 PM Pacific Time.   monthly_revenue_billing_and_revenue_data From 2015-02 to 2017-06: Available monthly on the 4th day of the month by 5:00pm Pacific Time. Data includes metered transactions (e.g. hourly) from two months prior. From 2017-07 to present: Available monthly on the 15th day of the month by 5:00pm Pacific Time. Data includes metered transactions (e.g. hourly) from one month prior.   monthly_revenue_annual_subscriptions From 2015-02 to 2017-06: Available monthly on the 4th day of the month by 5:00pm Pacific Time. Data includes up-front software charges (e.g. annual) from one month prior. From 2017-07 to present: Available monthly on the 15th day of the month by 5:00pm Pacific Time. Data includes up-front software charges (e.g. annual) from one month prior.   disbursed_amount_by_product From 2015-01-26 to present: Available every 30 days by 5:00 PM Pacific Time.   disbursed_amount_by_product_with_uncollected_funds From 2012-04-19 to 2015-01-25: Available every 30 days by 5:00 PM Pacific Time. From 2015-01-26 to present: This data set was split into three data sets: disbursed_amount_by_product, disbursed_amount_by_age_of_uncollected_funds, and disbursed_amount_by_age_of_disbursed_funds.   disbursed_amount_by_instance_hours From 2012-09-04 to present: Available every 30 days by 5:00 PM Pacific Time.   disbursed_amount_by_customer_geo From 2012-04-19 to present: Available every 30 days by 5:00 PM Pacific Time.   disbursed_amount_by_age_of_uncollected_funds From 2015-01-26 to present: Available every 30 days by 5:00 PM Pacific Time.   disbursed_amount_by_age_of_disbursed_funds From 2015-01-26 to present: Available every 30 days by 5:00 PM Pacific Time.   customer_profile_by_industry From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific Time. From 2017-06-30 to present: This data set is no longer available.   customer_profile_by_revenue From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific Time. From 2017-06-30 to present: This data set is no longer available.   customer_profile_by_geography From 2015-10-01 to 2017-06-29: Available daily by 5:00 PM Pacific Time. From 2017-06-30 to present: This data set is no longer available.   sales_compensation_billed_revenue From 2016-12 to 2017-06: Available monthly on the 4th day of the month by 5:00pm Pacific Time. Data includes metered transactions (e.g. hourly) from two months prior, and up-front software charges (e.g. annual) from one month prior. From 2017-06 to present: Available monthly on the 15th day of the month by 5:00pm Pacific Time. Data includes metered transactions (e.g. hourly) from one month prior, and up-front software charges (e.g. annual) from one month prior.   us_sales_and_use_tax_records From 2017-02-15 to present: Available monthly on the 15th day of the month by 5:00 PM Pacific Time.   
        public let dataSetType: DataSetType
        /// The name (friendly name, not ARN) of the destination S3 bucket.
        public let destinationS3BucketName: String
        /// (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
        public let destinationS3Prefix: String?
        /// The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
        public let roleNameArn: String
        /// Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
        public let snsTopicArn: String

        public init(customerDefinedValues: [String: String]? = nil, dataSetPublicationDate: TimeStamp, dataSetType: DataSetType, destinationS3BucketName: String, destinationS3Prefix: String? = nil, roleNameArn: String, snsTopicArn: String) {
            self.customerDefinedValues = customerDefinedValues
            self.dataSetPublicationDate = dataSetPublicationDate
            self.dataSetType = dataSetType
            self.destinationS3BucketName = destinationS3BucketName
            self.destinationS3Prefix = destinationS3Prefix
            self.roleNameArn = roleNameArn
            self.snsTopicArn = snsTopicArn
        }

        public func validate(name: String) throws {
            try customerDefinedValues?.forEach {
                try validate($0.key, name:"customerDefinedValues.key", parent: name, max: 255)
                try validate($0.key, name:"customerDefinedValues.key", parent: name, min: 1)
                try validate($0.value, name:"customerDefinedValues[\"\($0.key)\"]", parent: name, max: 255)
                try validate($0.value, name:"customerDefinedValues[\"\($0.key)\"]", parent: name, min: 1)
            }
            try validate(destinationS3BucketName, name:"destinationS3BucketName", parent: name, min: 1)
            try validate(roleNameArn, name:"roleNameArn", parent: name, min: 1)
            try validate(snsTopicArn, name:"snsTopicArn", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case customerDefinedValues = "customerDefinedValues"
            case dataSetPublicationDate = "dataSetPublicationDate"
            case dataSetType = "dataSetType"
            case destinationS3BucketName = "destinationS3BucketName"
            case destinationS3Prefix = "destinationS3Prefix"
            case roleNameArn = "roleNameArn"
            case snsTopicArn = "snsTopicArn"
        }
    }

    public struct GenerateDataSetResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "dataSetRequestId", required: false, type: .string)
        ]

        /// A unique identifier representing a specific request to the GenerateDataSet operation. This identifier can be used to correlate a request with notifications from the SNS topic.
        public let dataSetRequestId: String?

        public init(dataSetRequestId: String? = nil) {
            self.dataSetRequestId = dataSetRequestId
        }

        private enum CodingKeys: String, CodingKey {
            case dataSetRequestId = "dataSetRequestId"
        }
    }

    public struct StartSupportDataExportRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "customerDefinedValues", required: false, type: .map), 
            AWSShapeMember(label: "dataSetType", required: true, type: .enum), 
            AWSShapeMember(label: "destinationS3BucketName", required: true, type: .string), 
            AWSShapeMember(label: "destinationS3Prefix", required: false, type: .string), 
            AWSShapeMember(label: "fromDate", required: true, type: .timestamp), 
            AWSShapeMember(label: "roleNameArn", required: true, type: .string), 
            AWSShapeMember(label: "snsTopicArn", required: true, type: .string)
        ]

        /// (Optional) Key-value pairs which will be returned, unmodified, in the Amazon SNS notification message and the data set metadata file.
        public let customerDefinedValues: [String: String]?
        ///  Specifies the data set type to be written to the output csv file. The data set types customer_support_contacts_data and test_customer_support_contacts_data both result in a csv file containing the following fields: Product Id, Product Code, Customer Guid, Subscription Guid, Subscription Start Date, Organization, AWS Account Id, Given Name, Surname, Telephone Number, Email, Title, Country Code, ZIP Code, Operation Type, and Operation Time.    customer_support_contacts_data Customer support contact data. The data set will contain all changes (Creates, Updates, and Deletes) to customer support contact data from the date specified in the from_date parameter. test_customer_support_contacts_data An example data set containing static test data in the same format as customer_support_contacts_data  
        public let dataSetType: SupportDataSetType
        /// The name (friendly name, not ARN) of the destination S3 bucket.
        public let destinationS3BucketName: String
        /// (Optional) The desired S3 prefix for the published data set, similar to a directory path in standard file systems. For example, if given the bucket name "mybucket" and the prefix "myprefix/mydatasets", the output file "outputfile" would be published to "s3://mybucket/myprefix/mydatasets/outputfile". If the prefix directory structure does not exist, it will be created. If no prefix is provided, the data set will be published to the S3 bucket root.
        public let destinationS3Prefix: String?
        /// The start date from which to retrieve the data set in UTC. This parameter only affects the customer_support_contacts_data data set type.
        public let fromDate: TimeStamp
        /// The Amazon Resource Name (ARN) of the Role with an attached permissions policy to interact with the provided AWS services.
        public let roleNameArn: String
        /// Amazon Resource Name (ARN) for the SNS Topic that will be notified when the data set has been published or if an error has occurred.
        public let snsTopicArn: String

        public init(customerDefinedValues: [String: String]? = nil, dataSetType: SupportDataSetType, destinationS3BucketName: String, destinationS3Prefix: String? = nil, fromDate: TimeStamp, roleNameArn: String, snsTopicArn: String) {
            self.customerDefinedValues = customerDefinedValues
            self.dataSetType = dataSetType
            self.destinationS3BucketName = destinationS3BucketName
            self.destinationS3Prefix = destinationS3Prefix
            self.fromDate = fromDate
            self.roleNameArn = roleNameArn
            self.snsTopicArn = snsTopicArn
        }

        public func validate(name: String) throws {
            try customerDefinedValues?.forEach {
                try validate($0.key, name:"customerDefinedValues.key", parent: name, max: 255)
                try validate($0.key, name:"customerDefinedValues.key", parent: name, min: 1)
                try validate($0.value, name:"customerDefinedValues[\"\($0.key)\"]", parent: name, max: 255)
                try validate($0.value, name:"customerDefinedValues[\"\($0.key)\"]", parent: name, min: 1)
            }
            try validate(destinationS3BucketName, name:"destinationS3BucketName", parent: name, min: 1)
            try validate(roleNameArn, name:"roleNameArn", parent: name, min: 1)
            try validate(snsTopicArn, name:"snsTopicArn", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case customerDefinedValues = "customerDefinedValues"
            case dataSetType = "dataSetType"
            case destinationS3BucketName = "destinationS3BucketName"
            case destinationS3Prefix = "destinationS3Prefix"
            case fromDate = "fromDate"
            case roleNameArn = "roleNameArn"
            case snsTopicArn = "snsTopicArn"
        }
    }

    public struct StartSupportDataExportResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "dataSetRequestId", required: false, type: .string)
        ]

        /// A unique identifier representing a specific request to the StartSupportDataExport operation. This identifier can be used to correlate a request with notifications from the SNS topic.
        public let dataSetRequestId: String?

        public init(dataSetRequestId: String? = nil) {
            self.dataSetRequestId = dataSetRequestId
        }

        private enum CodingKeys: String, CodingKey {
            case dataSetRequestId = "dataSetRequestId"
        }
    }

    public enum SupportDataSetType: String, CustomStringConvertible, Codable {
        case customerSupportContactsData = "customer_support_contacts_data"
        case testCustomerSupportContactsData = "test_customer_support_contacts_data"
        public var description: String { return self.rawValue }
    }
}
