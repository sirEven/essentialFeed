//
//  URLSessionHTTPClientTests.swift
//  EssentialFeedTests
//
//  Created by Severin Bretscher on 04.06.19.
//  Copyright © 2019 SevDev. All rights reserved.
//

import XCTest

class URLSessionHTTPClient {
    private let session: URLSession

    init(session: URLSession) {
        self.session = session
    }

    func get(from url: URL) {
        session.dataTask(with: url) {_, _, _ in }.resume()
    }
}

class URLSessionHTTPClientTests: XCTestCase {

    func test_getFromURL_resumesDataTaskWithURL() {
        let url = URL(string: "http://any-url.com")
        let session = URLSessionSpy()
        let task = URLSessiondDataTaskSpy()
        session.stub(url: url!, task: task)
        let sut = URLSessionHTTPClient(session: session)
        sut.get(from: url!)

        XCTAssertEqual(task.resumeCalleCount, 1)
    }

    // MARK: - Helpers

    private class URLSessionSpy: URLSession {
        private var stubs = [URL: URLSessionDataTask]()

        func stub(url: URL, task: URLSessionDataTask) {
            stubs[url] = task
        }

        override func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
            return stubs[url] ?? FakeURLSessiondDataTask()
        }
    }

    private class FakeURLSessiondDataTask: URLSessionDataTask {
        override func resume() {}
    }

    private class URLSessiondDataTaskSpy: URLSessionDataTask {
        var resumeCalleCount = 0

        override func resume() {
            resumeCalleCount += 1
        }
    }
}

// continue on 11:00 minute mark!
