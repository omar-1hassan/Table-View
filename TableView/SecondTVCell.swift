//
//  SecondTVCell.swift
//  TableView
//
//  Created by mac on 05/08/2023.
//

import UIKit

class SecondTVCell: UITableViewCell {
    @IBOutlet weak var productIMG: UIImageView!
    @IBOutlet weak var productNameLBL: UILabel!
    @IBOutlet weak var productPriceLBL: UILabel!

    @IBOutlet weak var productDetailsLBL: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setUpCell(photo: UIImage, details: String, price: String, description: String){
        productIMG.image = photo
        productNameLBL.text = details
        productPriceLBL.text = price
        productDetailsLBL.text = description
        
    }
}
