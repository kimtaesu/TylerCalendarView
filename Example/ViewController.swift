//
//  ViewController.swift
//  Example
//
//  Created by Tyler on 2019. 5. 13..
//  Copyright © 2019 Tyler. All rights reserved.
//

import UIKit
import TylerCalendarView

// MARK: - ViewController

/// The ViewController
class ViewController: UIViewController {
    // MARK: View-Lifecycle
    let tylerCalendarView = TylerCalendarView()
    /// View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(tylerCalendarView)
        tylerCalendarView.frame.size = CGSize(width: view.frame.width, height: view.frame.height / 2)
    }
    /// LoadView
}
