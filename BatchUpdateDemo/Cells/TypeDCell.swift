//
//  TypeDCell.swift
//  BatchUpdateDemo
//
//  Created by Shine on 2020/10/26.
//

import UIKit

class TypeDCell: MainCell , CellProtocols{
    @IBOutlet weak var heightDConstaint: NSLayoutConstraint!
    func setupCell(index: Int, data : MusicData) {
        print("This is first time for D cell : \(self)")
//        heightDConstaint.constant = data.height
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
