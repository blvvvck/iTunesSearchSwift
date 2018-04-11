//
//  SearchRouter.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 11/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation
import UIKit
import SafariServices

class SearchRouter: SearchRouterInput {
   
    weak var view: UIViewController!
    
    func showPageInSafari(with url: URL) {
        let safariView = SFSafariViewController(url: url)
        view.present(safariView, animated: true, completion: nil)
    }
}
