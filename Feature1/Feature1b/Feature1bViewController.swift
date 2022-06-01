//
//  Feature1ViewController.swift
//  interfaceModulePoc1
//
//  Created by Fernando Luiz Goulart on 31/05/22.
//

import UIKit
import RouterServiceInterface
import Feature1Interface
import Feature2Interface

class Feature1bViewController: UIViewController {
    let routerService: RouterServiceProtocol

    init(routerService: RouterServiceProtocol) {
        self.routerService = routerService
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    lazy var mButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 40,
                                            y: view.frame.height - 160,
                                            width: view.frame.width - 80,
                                            height: 60))
        button.setTitle("Ir para feature 1", for: .normal)
        button.backgroundColor = .blue
        button.isEnabled = true
        button.tag = 1
        button.isUserInteractionEnabled = true
        button.clipsToBounds = true
        let refreshAction = UIAction(title: "Refresh") { (action) in
            self.navigateToFeature1()
        }
        button.addAction(refreshAction, for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mButton)
        view.isUserInteractionEnabled = true
    }

    override func viewWillAppear(_ animated: Bool) {
        view.backgroundColor = .green
    }
}

extension Feature1bViewController {
    @objc
    func navigateToFeature2() {
        let feature2Route = Feature2Route(someAnalyticsContext: "navigation from feature1")
        routerService.navigate(
            toRoute: feature2Route,
            fromView: self,
            presentationStyle: Push(),
            animated: true
        )
    }

    @objc
    func navigateToFeature1() {
        let feature1Route = Feature1Route(someAnalyticsContext: "navigation from feature1b")
        routerService.navigate(
            toRoute: feature1Route,
            fromView: self,
            presentationStyle: Push(),
            animated: true
        )
    }
}
