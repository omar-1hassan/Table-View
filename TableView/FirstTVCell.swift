//
//  FirstTVCell.swift
//  TableView
//
//  Created by mac on 05/08/2023.
//

import UIKit

class FirstTVCell: UITableViewCell {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var productIMG: UIImageView!
    @IBOutlet weak var productDetailsLBL: UILabel!
    @IBOutlet weak var productPriceLBL: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func setUpCell(photo: UIImage, details: String, price: String){
        productIMG.image = photo
        productDetailsLBL.text = details
        productPriceLBL.text = price
    }
}
