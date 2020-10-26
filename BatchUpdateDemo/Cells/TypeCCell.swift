//
//  TypeCCell.swift
//  BatchUpdateDemo
//
//  Created by Shine on 2020/10/26.
//

import UIKit

class TypeCCell: MainCell , CellProtocols{
    @IBOutlet weak var heightCConstaint: NSLayoutConstraint!
    func setupCell(index: Int, data : MusicData) {
        heightCConstaint.constant = data.height
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
