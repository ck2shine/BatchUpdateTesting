//
//  TypeBCell.swift
//  BatchUpdateDemo
//
//  Created by Shine on 2020/10/26.
//

import UIKit

class TypeBCell: UICollectionViewCell , CellProtocols {
    func setupCell(index: Int) {
        print("this is B form index : \(index)" )
    }
    

    @IBOutlet weak var LeftLabel: UILabel!
    @IBOutlet weak var RightLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
