//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Severin Bretscher on 20.04.19.
//  Copyright © 2019 SevDev. All rights reserved.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL)
}

public final class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient

    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }

    public func load(){
        client.get(from: url)
    }
}
