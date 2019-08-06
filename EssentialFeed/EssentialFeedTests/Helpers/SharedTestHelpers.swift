//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Severin Bretscher on 06.08.19.
//  Copyright © 2019 SevDev. All rights reserved.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL{
    return URL(string: "http://any-url.com")!
}
