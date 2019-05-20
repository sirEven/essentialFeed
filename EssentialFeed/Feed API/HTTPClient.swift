//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Severin Bretscher on 20.05.19.
//  Copyright © 2019 SevDev. All rights reserved.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
