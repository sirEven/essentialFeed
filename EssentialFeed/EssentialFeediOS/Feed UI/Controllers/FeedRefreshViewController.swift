//
//  Copyright © 2019 SevDev. All rights reserved.
//

import UIKit

protocol FeedRefreshViewControllerDelegate {
    func didRequestFeedRefres()
}

final class FeedRefreshViewController: NSObject, FeedLoadingView {

    @IBOutlet private var view: UIRefreshControl?

    var delegate: FeedRefreshViewControllerDelegate?

    @IBAction func refresh() {
        delegate?.didRequestFeedRefres()
    }

    func display(_ viewModel: FeedLoadingViewModel) {
        if viewModel.isLoading {
            view?.beginRefreshing()
        } else {
            view?.endRefreshing()
        }
    }
}
