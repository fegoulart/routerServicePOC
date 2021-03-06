//
//  Feature2Route.swift
//  interfaceModulePoc1
//
//  Created by Fernando Luiz Goulart on 31/05/22.
//

import RouterServiceInterface

public struct Feature2Route: Route {
    public static let identifier: String = "feature2_mainroute"
    public let someAnalyticsContext: String

    public init(someAnalyticsContext: String) {
        self.someAnalyticsContext = someAnalyticsContext
    }
}
