//
//  UserCell.swift
//  ZapTest
//
//  Created by Iman Zabihi on 25/06/2022.
//

import UIKit

class UserCell: UITableViewCell {
    
    static let identifier = "UserCell"

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "UserCell", bundle: nil)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
