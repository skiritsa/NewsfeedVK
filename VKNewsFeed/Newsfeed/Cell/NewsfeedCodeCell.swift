//
//  NewsfeedCodeCell.swift
//  VKNewsFeed
//
//  Created by Alex Kiritsa on 02.04.2020.
//  Copyright © 2020 Alex Kiritsa. All rights reserved.
//

import Foundation
import UIKit

final class NewsfeedCodeCell: UITableViewCell {
    static let reuseId = "NewsfeedCodeCell"
    
    let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(cardView)
        
        backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        // cardView constraints
//        cardView.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
//        cardView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12).isActive = true
//        cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
//        cardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        cardView.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        cardView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        cardView.widthAnchor.constraint(equalToConstant: 40).isActive = true

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
