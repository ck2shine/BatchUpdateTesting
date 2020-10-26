//
//  TypeACell.swift
//  BatchUpdateDemo
//
//  Created by Shine on 2020/10/26.
//

import UIKit

class TypeACell: UICollectionViewCell ,CellProtocols {
    func setupCell(index: Int) {
        print("this is A form index : \(index)" )
    }
 
    @IBOutlet weak var titleName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
