//
//  NewsfeedPresenter.swift
//  VKNewsFeed
//
//  Created by Alex Kiritsa on 26.03.2020.
//  Copyright (c) 2020 Alex Kiritsa. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol NewsfeedPresentationLogic
{
    func presentSomething(response: Newsfeed.Model.Response.ResonseType)
}

class NewsfeedPresenter: NewsfeedPresentationLogic
{
  weak var viewController: NewsfeedDisplayLogic?
  
  // MARK: Do something
  
    func presentSomething(response: Newsfeed.Model.Response.ResonseType)
  {
    switch response {
    case .presentNewsfeed:
        print(".prenestNewsfeed Presenter")
        viewController?.displayData(viewModel: .displayNewfeed)
    }
  }
}