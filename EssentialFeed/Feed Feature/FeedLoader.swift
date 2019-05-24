//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Severin Bretscher on 14.04.19.
//  Copyright © 2019 SevDev. All rights reserved.
//

import Foundation

public enum LoadFeedResult <Error: Swift.Error> {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    associatedtype Error: Swift.Error
    
    func load(completion: @escaping (LoadFeedResult<Error>) -> Void)
}
