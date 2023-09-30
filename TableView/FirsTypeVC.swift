//
//  PostsVC.swift
//  TableView
//
//  Created by mac on 05/08/2023.
//

import UIKit

class FirsTypeVC: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var firstTV: UITableView!
    
    //MARK: - Variables
    var cellName = "FirstTVCell"
    var cellHight = 280 * iPhoneXFactor
    var arrOfProducts: [Products] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initCell()
        addProducts()
    }
}
extension FirsTypeVC{
    func initCell(){
        firstTV.delegate = self
        firstTV.dataSource = self
        firstTV.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
    }
    func addProducts(){
        arrOfProducts.append(Products(image: UIImage(named: "2")!, details: "Dark Cola", price: "EGP 1,400"))
        arrOfProducts.append(Products(image: UIImage(named: "3")!, details: "Gongrats Bouquet", price: "EGP 1,190"))
        arrOfProducts.append(Products(image: UIImage(named: "4")!, details: "Light Bink Bouquet", price: "EGP 1000"))
        arrOfProducts.append(Products(image: UIImage(named: "6")!, details: "Happy Birth Day Bouquet", price: "EGP 1,200"))
        arrOfProducts.append(Products(image: UIImage(named: "8")!, details: "Graduation Vase", price: "EGP 1,299"))
        arrOfProducts.append(Products(image: UIImage(named: "9")!, details: "Soul Beauty Bouquet", price: "EGP 1,400"))
        
        arrOfProducts.append(Products(image: UIImage(named: "13")!, details: "Summer Bouquet", price: "EGP 1,299"))
        arrOfProducts.append(Products(image: UIImage(named: "15")!, details: "White Baby Roses Bouquet", price: "EGP 799"))
        arrOfProducts.append(Products(image: UIImage(named: "16")!, details: "It's A Boy Bouquet", price: "EGP 1,299"))
        arrOfProducts.append(Products(image: UIImage(named: "17")!, details: "White Cymbidium Bouquet", price: "EGP 1,750"))
        arrOfProducts.append(Products(image: UIImage(named: "19")!, details: "Best Dad Love", price: "EGP 1,299"))
        arrOfProducts.append(Products(image: UIImage(named: "20")!, details: "Happy Birthday Spring Vase", price: "EGP 1,400"))
        arrOfProducts.append(Products(image: UIImage(named: "22")!, details: "White Cymbidium Bouquet", price: "EGP 999"))
        arrOfProducts.append(Products(image: UIImage(named: "5")!, details: "Get Well Soon Bouquet", price: "EGP 999"))
        arrOfProducts.append(Products(image: UIImage(named: "7")!, details: "Bouquet Of Spring Color", price: "EGP 2,199"))
        arrOfProducts.append(Products(image: UIImage(named: "11")!, details: "Summer Bink Bouquet", price: "EGP 1,700"))
        arrOfProducts.append(Products(image: UIImage(named: "18")!, details: "Super Hero Eternal Amour", price: "EGP 1,200"))
        arrOfProducts.append(Products(image: UIImage(named: "21")!, details: "Big Love Vase", price: "EGP 1,299"))
        
        arrOfProducts.append(Products(image: UIImage(named: "12")!, details: "Peach Chrysanthemum Bouquet", price: "EGP 599"))
        arrOfProducts.append(Products(image: UIImage(named: "10")!, details: "Red Roses Vase", price: "EGP 1,299"))
        arrOfProducts.append(Products(image: UIImage(named: "14")!, details: "Best Dad Forest Fantasy", price: "EGP 899"))
        arrOfProducts.append(Products(image: UIImage(named: "23")!, details: "Pink Sun Flower Vase", price: "EGP 20000"))
        arrOfProducts.append(Products(image: UIImage(named: "1")!, details: "PinK Heart Roses", price: "EGP 1,299"))
    }
}

//MARK: - Delegate
extension FirsTypeVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHight
    }
    
}

//MARK: - Data Source
extension FirsTypeVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrOfProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! FirstTVCell
        let data = arrOfProducts[indexPath.row]
        cell.setUpCell(photo: data.image, details: data.details, price: data.price)
        return cell
    }
}

