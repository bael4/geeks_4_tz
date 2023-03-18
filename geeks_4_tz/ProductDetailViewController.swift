//
//  ProductDetailViewController.swift
//  geeks_4_tz
//
//  Created by Баэль Рыспеков on 17/3/23.
//

import UIKit

class ProductDetailViewController: UIViewController {

    
    
    //// outlet
    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var productTypeOutlet: UILabel!
    @IBOutlet weak var productImageOutlet: UIImageView!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    @IBOutlet weak var roomTypeLabel: UILabel!
    
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBOutlet weak var materialLabel: UILabel!
    
    @IBOutlet weak var dimensionLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    var quantity: Int = 1
    
    
    /// product
    var productType: String?
    var productImage: String?
    var productPrice: Double?
    var roomType: String?
    var color: String?
    var material: String?
    var dimension: String?
    var weight: String?
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        productTypeOutlet.text = productType
        productImageOutlet.image = UIImage(named: productImage!)
        roomTypeLabel.text = roomType
        colorLabel.text = color
        materialLabel.text = material
        dimensionLabel.text = dimension
        weightLabel.text = weight
        
        updateLabels()
     
    }

    func updateLabels() {
           quantityLabel.text = "\(quantity)"
        priceLabel.text = String(format: "$%.2f", productPrice! * Double(quantity))
       }
    
    @IBAction func decrementAction(_ sender: Any) {
        if quantity > 1 {
                   quantity -= 1
                   updateLabels()
               }
    }
    
    @IBAction func incrementAction(_ sender: Any) {
        quantity += 1
               updateLabels()
    }
    
    @IBAction func heartAction(_ sender: Any) {
        
        if heartButton.backgroundColor == .clear {
            heartButton.backgroundColor = UIColor.red
           } else {
               heartButton.backgroundColor = .clear
           }
        
        
    }
}
