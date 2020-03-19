//
//  UIViewController + Storyboard.swift
//  VKNewsFeed
//
//  Created by Alex Kiritsa on 19.03.2020.
//  Copyright © 2020 Alex Kiritsa. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    class func loadFromStoryboard<T: UIViewController>() -> T {
        let name = String(describing: T.self)
        let storyboard = UIStoryboard(name: name, bundle: nil)
        if let viewController = storyboard.instantiateInitialViewController() as? T {
            return viewController
        } else {
            fatalError("Error: No intial view controller in \(name) storyboard")
        }
    }
}
