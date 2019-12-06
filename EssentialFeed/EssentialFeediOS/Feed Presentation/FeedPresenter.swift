//
//  Copyright © 2019 SevDev. All rights reserved.
//

import EssentialFeed

struct FeedLoadingViewModel {
    let isLoading: Bool
}

protocol FeedLoadingView {
    func display(_ view: FeedLoadingViewModel)
}

struct FeedViewModel {
    let feed: [FeedImage]
}

protocol FeedView {
     func display(_ view: FeedViewModel)
}

final class FeedPresenter {
    var feedView: FeedView?
    var loadingView: FeedLoadingView?

    func didStartLoadingFeed() {
        loadingView?.display(FeedLoadingViewModel(isLoading: true))
    }

    func didFinishLoadingFeed(with feed: [FeedImage]) {
        feedView?.display(FeedViewModel(feed: feed))
        loadingView?.display(FeedLoadingViewModel(isLoading: false))
    }

    func didFinishLoadingFeed(with error: Error) {
        loadingView?.display(FeedLoadingViewModel(isLoading: false))
    }
}
