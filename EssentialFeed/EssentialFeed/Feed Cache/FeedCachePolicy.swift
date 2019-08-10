//
//  FeedCachePolicy.swift
//  EssentialFeed
//
//  Created by Severin Bretscher on 10.08.19.
//  Copyright © 2019 SevDev. All rights reserved.
//

import Foundation

internal final class FeedCachePolicy {
    private init() {}

    private static let calendar = Calendar(identifier: .gregorian)

    private static var maxCacheAgeInDays: Int {
        return 7
    }

    internal static func validate(_ timestamp: Date, against date: Date) -> Bool {
        guard let maxCacheAge = calendar.date(byAdding: .day, value: maxCacheAgeInDays, to: timestamp) else {
            return false
        }
        return date < maxCacheAge
    }
}
