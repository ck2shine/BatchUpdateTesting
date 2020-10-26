//
//  TypeBCell.swift
//  BatchUpdateDemo
//
//  Created by Shine on 2020/10/26.
//

import UIKit

class TypeBCell: MainCell , CellProtocols {
    func setupCell(index: Int, data : MusicData) {
        print("this is B form index : \(index)" )
        heightBConstaint.constant = data.height
    }
    @IBOutlet weak var heightBConstaint: NSLayoutConstraint!
    

    @IBOutlet weak var LeftLabel: UILabel!
    @IBOutlet weak var RightLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
