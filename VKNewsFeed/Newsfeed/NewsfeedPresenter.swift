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
    func presentData(response: Newsfeed.Model.Response.ResonseType)
}

class NewsfeedPresenter: NewsfeedPresentationLogic
{
  weak var viewController: NewsfeedDisplayLogic?
  
  // MARK: Do something
  
    func presentData(response: Newsfeed.Model.Response.ResonseType)
  {
    switch response {
    case .presentNewsfeed(let feed):
        
        let cells = feed.items.map { (feedItem) in
            cellViewModel(from: feedItem)
        }
        let feedViewModel = FeedViewModel.init(cells: cells)
        viewController?.displayData(viewModel: .displayNewfeed(feedViewMode: feedViewModel))
    }
  }
    
    private func cellViewModel(from feedItem: FeedItem) -> FeedViewModel.Cell {
        return FeedViewModel.Cell.init(iconUrlString: "",
                                       name: "future name",
                                       date: "future date",
                                       text: feedItem.text,
                                       likes: String(feedItem.views?.count ?? 0),
                                       comments: String(feedItem.views?.count ?? 0),
                                       shares: String(feedItem.views?.count ?? 0),
                                       views: String(feedItem.views?.count ?? 0))
    }
}
