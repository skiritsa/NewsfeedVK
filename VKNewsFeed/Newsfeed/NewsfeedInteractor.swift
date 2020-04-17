//
//  NewsfeedInteractor.swift
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

protocol NewsfeedBusinessLogic
{
    func makeRequest(request: Newsfeed.Model.Request.RequestType)
}

protocol NewsfeedDataStore
{
    //var name: String { get set }
}

class NewsfeedInteractor: NewsfeedBusinessLogic, NewsfeedDataStore
{
    var presenter: NewsfeedPresentationLogic?
    var worker: NewsfeedWorker?
    
    private var revealPostIds = [Int]()
    private var feedResponse: FeedResponse?
    
    private var fetcher: DataFetcher = NetworkDataFetcher(networking: NetworkService())
    
    // MARK: Do something
    
    func makeRequest(request: Newsfeed.Model.Request.RequestType)
    {
        worker = NewsfeedWorker()
        worker?.doSomeWork()
        
        //    let response = Newsfeed.Model.Response.ResonseType()
        //    presenter?.presentSomething(response: response)
        
        switch request {
        case .getNewsFeed:
            print(".getFeed Interactor")
            fetcher.getFeed { [weak self] (feedResponse) in
                self?.feedResponse = feedResponse
                self?.presentFeed()
            }
        case .revealPostIds(postId: let postId):
            revealPostIds.append(postId)
            presentFeed()
        }
    }
    
    private func presentFeed() {
        guard let response = feedResponse else { return }
        presenter?.presentData(response: .presentNewsfeed(feed: response, revealedPostIds: revealPostIds))
    }
}
