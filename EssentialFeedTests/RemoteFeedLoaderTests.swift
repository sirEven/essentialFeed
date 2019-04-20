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
        HTTPClient.shared.get(from: URL(string:  "https://a-url.com")!)
    }
}

class HTTPClient {
    static var shared = HTTPClient()
    func get(from url: URL) {}
}

class HTTPClientSpy: HTTPClient {
    var requestedURL: URL?
    override func get(from url: URL) {
        requestedURL = url
    }
}

class RemoteFeedloaderTests: XCTestCase {
    func test_init_doesNotRequestDateFromURL() {
        let client = HTTPClientSpy()
        HTTPClient.shared = client
        _ = RemoteFeedLoader()

        XCTAssertNil(client.requestedURL)
    }

    func test_load_requestDataFromURL() {
        let client = HTTPClientSpy()
        HTTPClient.shared = client
        let sut = RemoteFeedLoader()

        sut.load()

        XCTAssertNotNil(client.requestedURL)
    }
}
