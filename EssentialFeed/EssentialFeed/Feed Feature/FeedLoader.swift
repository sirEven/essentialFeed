//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Severin Bretscher on 14.04.19.
//  Copyright © 2019 SevDev. All rights reserved.
//

import Foundation


public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>

    func load(completion: @escaping (Result) -> Void)
}
