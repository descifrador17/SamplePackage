// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public struct SamplePackageManager {
    
    public init() { }
    
    public static func showDummyViewController(on parentVC: UIViewController) {
        let presentedVC = DummyViewControllerViewController()
        parentVC.present(presentedVC, animated: true)
    }
}
