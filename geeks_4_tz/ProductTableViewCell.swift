//
//  ProductTableViewCell.swift
//  geeks_4_tz
//
//  Created by Баэль Рыспеков on 16/3/23.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productType: UILabel!
    @IBOutlet weak var productCount: UILabel!
    
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
    }

    
    
    
    
    func configure (count: String, type:String, image: String){ 
        productImage.image = UIImage(named: image)
        productType.text = type
        productCount.text = "\(count) items"
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }

}
