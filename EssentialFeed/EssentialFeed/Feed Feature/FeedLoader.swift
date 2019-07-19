//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Severin Bretscher on 14.04.19.
//  Copyright © 2019 SevDev. All rights reserved.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
