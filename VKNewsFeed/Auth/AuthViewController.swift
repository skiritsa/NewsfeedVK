//
//  AuthViewController.swift
//  VKNewsFeed
//
//  Created by Alex Kiritsa on 17.03.2020.
//  Copyright © 2020 Alex Kiritsa. All rights reserved.
//

import UIKit

class AuthViewController: UIViewController {

    private var authService: AuthService!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        authService = AuthService()
        authService = AppDelegate.shared().authService
    }
    
    @IBAction func sigInTouch() {
        authService.wakeUpSession()
    }
    
}
