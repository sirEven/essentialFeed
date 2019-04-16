//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Severin Bretscher on 16.04.19.
//  Copyright © 2019 SevDev. All rights reserved.
//

import XCTest

class RemoteFeedLoader {

}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedloaderTests: XCTestCase {
    func test_init_doesNotRequestDateFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()

        XCTAssertNil(client.requestedURL)
    }
}
