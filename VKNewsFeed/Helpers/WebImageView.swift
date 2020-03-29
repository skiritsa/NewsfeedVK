//
//  WebImageView.swift
//  VKNewsFeed
//
//  Created by Alex Kiritsa on 29.03.2020.
//  Copyright © 2020 Alex Kiritsa. All rights reserved.
//

import UIKit

class WebImageView: UIImageView {
    
    func set(imageUrl: String) {
        guard let url = URL(string: imageUrl) else { return }
        
        if let cachedResponse = URLCache.shared.cachedResponse(for: URLRequest(url: url)) {
            self.image = UIImage(data: cachedResponse.data)
            print("From cache")
            return
        }
        
        print("From internet")
        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            DispatchQueue.main.async {
                if let data = data, let response = response {
                    self.image = UIImage(data: data)
                    self.handleLoadedImage(data: data, response: response)
                }
            }
        }
        dataTask.resume()
    }
    
    private func handleLoadedImage(data: Data, response: URLResponse) {
        guard let responseURL = response.url else { return }
        let cachedResponse = CachedURLResponse(response: response, data: data)
        URLCache.shared.storeCachedResponse(cachedResponse, for: URLRequest(url: responseURL))
    }
}
