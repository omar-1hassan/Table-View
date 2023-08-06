//
//  MainTVCell.swift
//  TableView
//
//  Created by mac on 04/08/2023.
//

import UIKit

class MainTVCell: UITableViewCell {
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var typesLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      mainView.layer.cornerRadius = 15
    }
}
