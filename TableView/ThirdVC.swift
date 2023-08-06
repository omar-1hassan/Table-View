//
//  FourthVC.swift
//  TableView
//
//  Created by mac on 06/08/2023.
//

import UIKit

class ThirdVC: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var fourthTVHightConstaint: NSLayoutConstraint!
    @IBOutlet weak var fourthTV: UITableView!
    //MARK: - Variables
    var cellName = "FirstTVCell"
    var cellHight: CGFloat = 270 * iPhoneXFactor
    var arrProduct: [Products] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
}
//MARK: - Delegate Protocol
extension ThirdVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHight
    }
    
}
//MARK: - Data Source Protocol
extension ThirdVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrProduct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! FirstTVCell
        let data = arrProduct[indexPath.row]
        cell.setUpCell(photo: data.image, details: data.details, price: data.price)
        return cell
    }
}
extension ThirdVC{
    func initUI(){
        fourthTV.delegate = self
        fourthTV.dataSource = self
        fourthTV.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        addData()
        fourthTVHightConstaint.constant = cellHight * CGFloat(arrProduct.count)
    }
    func addData(){
        arrProduct.append(Products(image: UIImage(named: "2")!, details: "Dark Cola", price: "EGP 1,400"))
        arrProduct.append(Products(image: UIImage(named: "3")!, details: "Gongrats Bouquet", price: "EGP 1,190"))
        arrProduct.append(Products(image: UIImage(named: "4")!, details: "Light Bink Bouquet", price: "EGP 1000"))
        arrProduct.append(Products(image: UIImage(named: "6")!, details: "Happy Birth Day Bouquet", price: "EGP 1,200"))
        arrProduct.append(Products(image: UIImage(named: "8")!, details: "Graduation Vase", price: "EGP 1,299"))
        arrProduct.append(Products(image: UIImage(named: "9")!, details: "Soul Beauty Bouquet", price: "EGP 1,400"))
        
        arrProduct.append(Products(image: UIImage(named: "13")!, details: "Summer Bouquet", price: "EGP 1,299"))
        arrProduct.append(Products(image: UIImage(named: "15")!, details: "White Baby Roses Bouquet", price: "EGP 799"))
        arrProduct.append(Products(image: UIImage(named: "16")!, details: "It's A Boy Bouquet", price: "EGP 1,299"))
        arrProduct.append(Products(image: UIImage(named: "17")!, details: "White Cymbidium Bouquet", price: "EGP 1,750"))
        arrProduct.append(Products(image: UIImage(named: "19")!, details: "Best Dad Love", price: "EGP 1,299"))
        arrProduct.append(Products(image: UIImage(named: "20")!, details: "Happy Birthday Spring Vase", price: "EGP 1,400"))
        arrProduct.append(Products(image: UIImage(named: "22")!, details: "White Cymbidium Bouquet", price: "EGP 999"))
        arrProduct.append(Products(image: UIImage(named: "5")!, details: "Get Well Soon Bouquet", price: "EGP 999"))
        arrProduct.append(Products(image: UIImage(named: "7")!, details: "Bouquet Of Spring Color", price: "EGP 2,199"))
        arrProduct.append(Products(image: UIImage(named: "11")!, details: "Summer Bink Bouquet", price: "EGP 1,700"))
        arrProduct.append(Products(image: UIImage(named: "18")!, details: "Super Hero Eternal Amour", price: "EGP 1,200"))
        arrProduct.append(Products(image: UIImage(named: "21")!, details: "Big Love Vase", price: "EGP 1,299"))
        
        arrProduct.append(Products(image: UIImage(named: "12")!, details: "Peach Chrysanthemum Bouquet", price: "EGP 599"))
        arrProduct.append(Products(image: UIImage(named: "10")!, details: "Red Roses Vase", price: "EGP 1,299"))
        arrProduct.append(Products(image: UIImage(named: "14")!, details: "Best Dad Forest Fantasy", price: "EGP 899"))
        arrProduct.append(Products(image: UIImage(named: "23")!, details: "Pink Sun Flower Vase", price: "EGP 20000"))
        arrProduct.append(Products(image: UIImage(named: "1")!, details: "PinK Heart Roses", price: "EGP 1,299"))
    }
}
