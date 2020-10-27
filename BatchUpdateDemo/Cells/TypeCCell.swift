//
//  TypeCCell.swift
//  BatchUpdateDemo
//
//  Created by Shine on 2020/10/26.
//

import UIKit

class TypeCCell: MainCell{


    private var viewModel : TypeCViewModel?

    @IBOutlet weak var infoTextLabel: UILabel!
    @IBOutlet weak var heightCConstaint: NSLayoutConstraint!

    func setupCell(index: Int, data : MusicData , viewModel : TypeCViewModel) {
//        heightCConstaint.constant = data.height
        print("this is first time in c for cell \(self)")

        self.viewModel = viewModel

        self.viewModel?.clickAction.removeAllBinding()

        self.viewModel?.clickAction.binding(trigger : false , listener: { [unowned self](newValue, oldValue) in
            if let nv = newValue {
                self.infoTextLabel.text = nv
                print("self in closure \(self)")
//                print(self.viewModel?.clickAction._EventListeners)
            }
        })
    }

//    override func prepareForReuse() {
//        super.prepareForReuse()
//        self.viewModel?.clickAction.removeAllBinding()
//    }


    @IBAction func TriggerAction(_ sender: Any) {
        print("self in real button \(self)")
        print("self in real button \(self.viewModel?.clickAction._EventListeners)")
        self.viewModel?.clickAction.value = "From the action"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
