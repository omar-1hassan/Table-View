//
//  ViewController.swift
//  TableView
//
//  Created by mac on 04/08/2023.
//

import UIKit

class MainVC: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var mainTV: UITableView!
    
    //MARK: - Variables
    var cellName = "MainTVCell"
    var types = ["First type", "Second type", "Third type", "Fourth type"]
    var cellHight = 150 * iPhoneXFactor
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
}
extension MainVC{
    func initUI(){
        mainTV.delegate = self
        mainTV.dataSource = self
        mainTV.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
    }
}
//MARK: - Delegate Protocol
extension MainVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHight
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc = storyboard?.instantiateViewController(withIdentifier: "First")
            vc?.title = types[0]
            navigationController?.pushViewController(vc!, animated: true)
        } else if indexPath.row == 1{
            let vc = storyboard?.instantiateViewController(withIdentifier: "Second")
            vc?.title = types[1]
            navigationController?.pushViewController(vc!, animated: true)
        } else if indexPath.row == 2{
            let vc = storyboard?.instantiateViewController(withIdentifier: "Third")
            vc?.title = types[2]
            navigationController?.pushViewController(vc!, animated: true)
        }else if indexPath.row == 3{
            let vc = storyboard?.instantiateViewController(withIdentifier: "Fourth")
            vc?.title = types[3]
            navigationController?.pushViewController(vc!, animated: true)
        }
    }
    
}
//MARK: - Data Source Protocol
extension MainVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        types.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! MainTVCell
        cell.typesLBL.text = types[indexPath.row]
        return cell
    }
}

