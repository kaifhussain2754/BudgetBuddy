//
//  HomeCell.swift
//  BudgetBuddy
//
//  Created by Kaif Hussain on 12/06/24.
//

import UIKit

class HomeCell: UITableViewCell {

    @IBOutlet weak var SET_ViewAllButton: UIButton!
    @IBOutlet weak var ExpenseAmount: UILabel!
    @IBOutlet weak var UserName: UILabel!
    @IBOutlet weak var ProfileImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
