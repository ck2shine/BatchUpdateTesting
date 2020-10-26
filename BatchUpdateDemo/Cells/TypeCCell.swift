//
//  TypeCCell.swift
//  BatchUpdateDemo
//
//  Created by Shine on 2020/10/26.
//

import UIKit

class TypeCCell: UICollectionViewCell , CellProtocols{
    func setupCell(index: Int) {
        print("this is first time in c for cell \(self)")
    }
    


    @IBAction func TriggerAction(_ sender: Any) {
        print(self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
