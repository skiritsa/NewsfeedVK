//
//  String + Height.swift
//  VKNewsFeed
//
//  Created by Alex Kiritsa on 01.04.2020.
//  Copyright © 2020 Alex Kiritsa. All rights reserved.
//

import Foundation
import UIKit

extension String {
    func height(width: CGFloat, font: UIFont) -> CGFloat {
        let textSize = CGSize(width: width, height: .greatestFiniteMagnitude)
        
        let size = self.boundingRect(with: textSize,
                                     options: .usesLineFragmentOrigin,
                                     attributes: [NSAttributedString.Key.font : font],
                                     context: nil)
        return ceil(size.height)
    }
}
