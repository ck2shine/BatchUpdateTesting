//
//  TypeACell.swift
//  BatchUpdateDemo
//
//  Created by Shine on 2020/10/26.
//

import UIKit

class TypeACell: MainCell ,CellProtocols {
            
    func setupCell(index: Int, data: MusicData) {
        print("this is A form index : \(index)" )
        self.heightAConstraint.constant = data.height
       
    }
    
  
    @IBOutlet weak var heightAConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var titleName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.red.cgColor
        // Initialization code
    }

}
