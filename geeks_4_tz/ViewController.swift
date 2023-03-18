//
//  ViewController.swift
//  geeks_4_tz
//
//  Created by Баэль Рыспеков on 16/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var productsTableView: UITableView!
    private var productList: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsTableView.dataSource = self
        productsTableView.delegate = self
        initData()
    }
    
    
    private func initData (){
        productList = [
        Product(productId: 2, productImage: "kitchen", productType: "Modern kitchen", productCount: "17", details: ProductDetails(roomType: "Modern kitchen",productImage: "kitchen", color: "red", material: "Textile, Velvet, Cotton", dimensions: "25.6 * 31.5 * 37.4 inches", weight:  "20.3 Pounds", star: 5, name: "AbocoFur Modern Velvet Fabric Lazy Chair", price: 234)),
        Product(productId: 2, productImage: "Contents", productType: "Reading Table", productCount: "22", details: ProductDetails(roomType:  "Modern kitchen",productImage: "kitchen", color: "red", material: "Textile, Velvet, Cotton", dimensions: "25.6 * 31.5 * 37.4 inches", weight:  "20.3 Pounds", star: 5, name: "AbocoFur Modern Velvet Fabric Lazy Chair", price: 543))
        ]
    }
    
}


extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductTableViewCell
        cell.configure(count: productList[indexPath.row].productCount, type: productList[indexPath.row].productType, image: productList[indexPath.row].productImage)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
      let vc = ProductDetailViewController()
        
        vc.productType = productList[indexPath.row].details.name
        vc.productImage = productList[indexPath.row].details.productImage
        vc.productPrice = productList[indexPath.row].details.price
        vc.roomType = productList[indexPath.row].details.roomType
        vc.color = productList[indexPath.row].details.color
        vc.material = productList[indexPath.row].details.material
        vc.dimension = productList[indexPath.row].details.dimensions
        vc.weight = productList[indexPath.row].details.weight

        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

struct Product {
    
    var productId: Int
    var productImage: String
    var productType: String
    var productCount: String
    let details: ProductDetails
}

struct ProductDetails {
    
    let roomType: String
    let productImage: String
    let color: String
    let material: String
    let dimensions: String
    let weight: String
    let star: Int
    let name: String
    let price: Double
    
    
}

