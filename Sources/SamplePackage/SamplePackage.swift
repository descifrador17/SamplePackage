// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public struct SamplePackageManager {
    
     init() { }
    
     public static func showDummyViewController(on parentVC: UIViewController) {
        let presentedVC = DummyViewController()
         parentVC.navigationController?.pushViewController(presentedVC, animated: true)
    }
}
