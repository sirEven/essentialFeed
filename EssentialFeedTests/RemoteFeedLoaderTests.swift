//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Severin Bretscher on 16.04.19.
//  Copyright © 2019 SevDev. All rights reserved.
//

import XCTest

class RemoteFeedLoader {
    func load(){
        HTTPClient.shared.requestedURL = URL(string: "https://a-url.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    private init() {}
    var requestedURL: URL?
}

class RemoteFeedloaderTests: XCTestCase {
    func test_init_doesNotRequestDateFromURL() {
        let client = HTTPClient.shared
        _ = RemoteFeedLoader()

        XCTAssertNil(client.requestedURL)
    }

    func test_load_requestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()

        sut.load()

        XCTAssertNotNil(client.requestedURL)
    }
}
