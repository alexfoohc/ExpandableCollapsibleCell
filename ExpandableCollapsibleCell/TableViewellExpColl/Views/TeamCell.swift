//
//  TeamCell.swift
//  TableViewellExpColl
//
//  Created by Alejandro Hernández Cortés on 22/10/20.
//  Copyright © 2020 Alejandro Hernández Cortés. All rights reserved.
//

import UIKit

class TeamCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var message: UILabel!
    
    func updateViews(data: TeamData) {
        title.text = data.title
        message.text = data.message
    }
    
    func animate() {
        UIView.animate(withDuration: 0.5, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: .curveLinear, animations: {
            self.contentView.layoutIfNeeded()
        }, completion: nil)
    }

}
