//
//  DZMMainCellCell.swift
//  DZMeBookRead
//
//  Created by Ray on 2025/3/26.
//  Copyright © 2025 DZM. All rights reserved.
//

import UIKit

class DZMMainCellCell: UICollectionViewCell {

    @IBOutlet weak var countNum: UILabel!
    @IBOutlet weak var shortNameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }

}
