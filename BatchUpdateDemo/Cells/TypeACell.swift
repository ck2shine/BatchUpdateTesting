//
//  TypeACell.swift
//  BatchUpdateDemo
//
//  Created by Shine on 2020/10/26.
//

import UIKit

class TypeACell: MainCell ,CellProtocols {


//    lazy var rightButton : UIButton = {
//        let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.setTitle("This is Button", for: .normal)
//        button.backgroundColor = .red
//        button.addTarget(self, action: #selector(TriggerActionFromSelector(_:)), for: .touchUpInside)
//
//        contentView.addSubview(button)
//        return button
//    }()
//
//
//    lazy var titleLabel : UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "This is testing Label Title"
//        label.textAlignment = .center
//        label.font = label.font.withSize(22)
//        contentView.addSubview(label)
//        return label
//    }()
//
//
//    private func initAllView(){
//        rightButton.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
//        rightButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
//        rightButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
//        rightButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
//
//        titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
//        titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
//        titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
//        titleLabel.trailingAnchor.constraint(equalTo: rightButton.leadingAnchor).isActive = true
//
//
//        self.backgroundColor = .lightGray
//    }

//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        initAllView()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

    private var viewModel : MusicData?

    private var index : Int?

    @IBOutlet weak var titleALabel: UILabel!
    func setupCell(index: Int, data: MusicData) {

        print("this is A form index : \(index) , start binding \(Unmanaged.passUnretained(data).toOpaque()) , with cell \(Unmanaged.passUnretained(self).toOpaque())" )
//        self.heightAConstraint.constant = data.height

        self.viewModel = data
//        self.index = index
        self.viewModel?.info.removeObserver()

//        data.info.addObserver { [unowned self](str) in
//            self.titleLabel.text = str
//        }


        data.info.addObserver { [unowned self](str) in
            self.titleALabel.text = "This is Row from : \(str)"
        }

//        data.info.binding {[unowned self] (newValue, oldValue) in
//            if let nv = newValue{
//                self.titleALabel.text = "This is Row from : \(newValue)"
//            }
//        }
    }
    

    @IBOutlet weak var heightAConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var titleName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.red.cgColor
        // Initialization code
    }


//    @objc final private func TriggerActionFromSelector(_ sender : UIButton){
//        print(self.viewModel?.info.valueChanged)
//        print(" current vm \(Unmanaged.passUnretained( self.viewModel!).toOpaque())" )
//        self.viewModel?.info.value = "Change is now good \(self.index ?? 0)"
//    }

    @IBAction func TriggerAAction(_ sender: Any) {
        print(self.viewModel?.info.valueChanged)
        print(" current vm \(Unmanaged.passUnretained( self.viewModel!).toOpaque())" )
        self.viewModel?.info.value = "Change is now good \(self.index ?? 0)"
    }
    
//    override func prepareForReuse() {
//        super.prepareForReuse()
//        print(" start remove binding \(Unmanaged.passUnretained( self.viewModel!).toOpaque()) with cell \(Unmanaged.passUnretained(self).toOpaque())" )
//
//
//    }

}
