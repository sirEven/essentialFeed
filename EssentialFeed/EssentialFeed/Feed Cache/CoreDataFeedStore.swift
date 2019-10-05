//
//  Copyright © 2019 SevDev. All rights reserved.
//

import CoreData

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

private class ManagedCache: NSManagedObject {
    @NSManaged var timestamp: Date
    @NSManaged var feed: NSOrderedSet
}

private class ManagedFeedImage: NSManagedObject {
    @NSManaged var id: UUID
    @NSManaged var imageDescription: String?
    @NSManaged var location: String?
    @NSManaged var url: URL
    @NSManaged var cache: ManagedCache
}
