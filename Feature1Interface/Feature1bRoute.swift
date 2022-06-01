//
//  Feature1bRoute.swift
//  interfaceModulePoc1
//
//  Created by Fernando Luiz Goulart on 31/05/22.
//

import RouterServiceInterface

public struct Feature1bRoute: Route {
    public static let identifier: String = "feature1b_mainroute"
    public let someAnalyticsContext: String

    public init(someAnalyticsContext: String) {
        self.someAnalyticsContext = someAnalyticsContext
    }
}
