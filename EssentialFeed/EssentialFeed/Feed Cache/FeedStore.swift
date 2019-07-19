//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Severin Bretscher on 15.07.19.
//  Copyright © 2019 SevDev. All rights reserved.
//

import Foundation

public protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletion = (Error?) -> Void

    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    func insert(_ items: [LocalFeedItem], timestamp: Date, completion: @escaping InsertionCompletion)
}


