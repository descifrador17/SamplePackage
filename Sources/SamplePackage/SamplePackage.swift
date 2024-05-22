// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public struct SamplePackageManager {
    
    public func showDummyViewController(on parentVC: UIViewController) {
        let presentedVC = DummyViewControllerViewController()
        parentVC.present(parentVC, animated: true)
    }
}
