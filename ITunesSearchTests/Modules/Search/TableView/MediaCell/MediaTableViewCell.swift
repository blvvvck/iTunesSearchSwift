//
//  MediaTableViewCell.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 10/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import UIKit
import SDWebImage

class MediaTableViewCell: UITableViewCell {

    @IBOutlet weak var artWorkImageView: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var constraintImageToBottom: NSLayoutConstraint!
    @IBOutlet weak var constraintDescriptionToBottom: NSLayoutConstraint!
    @IBOutlet weak var constraintImageToDesription: NSLayoutConstraint!
    
    let freePrice = "free"
    
    override func prepareForReuse() {
        super.prepareForReuse()
        constraintImageToBottom.priority = .defaultLow
        constraintDescriptionToBottom.priority = .defaultHigh
        constraintImageToDesription.priority = .defaultHigh
    }
    
    func prepare(with model: MediaCellModel) {
        authorLabel.text = model.author
        nameLabel.text = model.name
        if let description = model.description {
            descriptionLabel.isHidden = false
            descriptionLabel.text = description
        } else {
            constraintImageToBottom.priority = .defaultHigh
            constraintDescriptionToBottom.priority = .defaultLow
            constraintImageToDesription.priority = .defaultLow
            descriptionLabel.isHidden = true
        }
        if model.price == 0.0 {
            priceLabel.text = freePrice
        } else  {
            priceLabel.text = "\(model.price)$"
        }
        guard let imageUrl = URL(string: model.imageUrl) else { return }
        artWorkImageView.sd_setImage(with: imageUrl, completed: nil)
    }
    
}
