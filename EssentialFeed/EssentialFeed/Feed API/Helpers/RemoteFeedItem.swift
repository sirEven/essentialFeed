//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Severin Bretscher on 19.07.19.
//  Copyright © 2019 SevDev. All rights reserved.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
