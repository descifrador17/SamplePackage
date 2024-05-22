//
//  DummyViewControllerViewController.swift
//
//
//  Created by utkarshdayal on 22/05/2024.
//  Copyright (c) 2024 Dreamplug. All rights reserved.
//

import Foundation
import UIKit

final class DummyViewControllerViewController: UIViewController {
    private let containerStack: UIStackView = {
        let stack = UIStackView()
        stack.backgroundColor = .clear
        stack.alignment = .center
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 40
        return stack
    }()

    private let image1: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    private let label1 = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        view.addSubview(containerStack)
        containerStack.fillSuperview()
        containerStack.addArrangedSubview(image1)
        containerStack.addArrangedSubview(label1)
        image1.image = UIImage(named: "sampleImage", in: Bundle.module, with: nil)
        image1.makeConstraint { $0.size(640, 480) }
        label1.text = "HMMM!!!! THIS IS FINE I GUESS"
        view.backgroundColor = .systemPink
    }
}
