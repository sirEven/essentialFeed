//
//  Copyright © 2019 SevDev. All rights reserved.
//

import Foundation

public final class CoreDataFeedStore: FeedStore {
    public init() {}

    public func retrieve(completion: @escaping CoreDataFeedStore.RetrievalCompletion) {
        completion(.empty)
    }

    public func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping CoreDataFeedStore.InsertionCompletion) {

    }

    public func deleteCachedFeed(completion: @escaping CoreDataFeedStore.DeletionCompletion) {

    }
    
}
