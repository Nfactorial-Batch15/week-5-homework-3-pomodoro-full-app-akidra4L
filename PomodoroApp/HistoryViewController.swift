//
//  HistoryViewController.swift
//  PomodoroApp
//
//  Created by Alikhan Gubayev on 07.05.2023.
//

import UIKit

class HistoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setInitialSettings()
    }
    
    private func setInitialSettings() {
        self.view.backgroundColor = UIColor(named: "CustomBlack")
    }
}
