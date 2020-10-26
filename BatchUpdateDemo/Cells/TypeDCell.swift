//
//  TypeDCell.swift
//  BatchUpdateDemo
//
//  Created by Shine on 2020/10/26.
//

import UIKit

class TypeDCell: UICollectionViewCell , CellProtocols{
    func setupCell(index: Int) {
        print("This is first time for D cell : \(self)")
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
