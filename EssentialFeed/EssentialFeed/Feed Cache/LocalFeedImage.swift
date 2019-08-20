//
//  LocalFeedItem.swift
//  EssentialFeed
//
//  Created by Severin Bretscher on 19.07.19.
//  Copyright © 2019 SevDev. All rights reserved.
//

import Foundation

public struct LocalFeedImage: Equatable {
    public let id: UUID
    public let description: String?
    public let location: String?
    public let url: URL

    public init(id: UUID, description: String?, location: String?, url: URL) {
        self.id = id
        self.description = description
        self.location = location
        self.url = url
    }
}
