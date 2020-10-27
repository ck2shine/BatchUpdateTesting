//
//  TypeTableACell.swift
//  BatchUpdateDemo
//
//  Created by i9400503 on 2020/10/27.
//

import UIKit

class TypeTableACell: UITableViewCell {

    private var viewModel : MusicData?

    lazy var rightButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("This is Button", for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(TriggerActionFromSelector(_:)), for: .touchUpInside)

        contentView.addSubview(button)
        return button
    }()


    lazy var titleLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This is testing Label Title"
        label.textAlignment = .center
        label.font = label.font.withSize(22)
        contentView.addSubview(label)
        return label
    }()


    private func initAllView(){
        rightButton.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        rightButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        rightButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        rightButton.widthAnchor.constraint(equalToConstant: 200).isActive = true

        titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: rightButton.leadingAnchor).isActive = true


        self.backgroundColor = .lightGray
    }


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initAllView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setupCell(index: Int, data: MusicData) {

        print("this is A form index : \(index) , start binding \(Unmanaged.passUnretained(data).toOpaque()) , with cell \(Unmanaged.passUnretained(self).toOpaque())" )
//        self.heightAConstraint.constant = data.height

        self.viewModel = data
//        self.index = index


        data.info.addObserver { [unowned self](str) in
            self.titleLabel.text = str
        }


//        data.info.addObserver { [unowned self](str) in
//            self.titleALabel.text = "This is Row from : \(str)"
//        }

//        data.info.binding {[unowned self] (newValue, oldValue) in
//            if let nv = newValue{
//                self.titleALabel.text = "This is Row from : \(newValue)"
//            }
//        }
    }

    @objc final private func TriggerActionFromSelector(_ sender : UIButton){
        print(self.viewModel?.info.valueChanged)
        print(" current vm \(Unmanaged.passUnretained( self.viewModel!).toOpaque())" )
        self.viewModel?.info.value = "Change is now good \(self.viewModel?.index)"
    }

}
