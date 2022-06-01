//
//  Feature1Route.swift
//  Feature1Interface
//
//  Created by Fernando Luiz Goulart on 01/06/22.
//

import RouterServiceInterface

public struct Feature1Route: Route {
    public static let identifier: String = "feature1_mainroute"
    public let someAnalyticsContext: String

    public init(someAnalyticsContext: String) {
        self.someAnalyticsContext = someAnalyticsContext
    }
}
