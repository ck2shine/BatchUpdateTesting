//
//  MusicViewControler.swift
//  BatchUpdateDemo
//
//  Created by Shine on 2020/10/26.
//

import UIKit

class MusicData {
    var nibName : String
    var height : CGFloat
    var index : Observable<Int>
    var info : Observable<String>

    init(nibName : String , height : CGFloat , index : Observable<Int> , info : Observable<String>) {
        self.nibName = nibName
        self.height = height
        self.index = index
        self.info = info
    }
}

final class MusicViewControler: UIViewController {
    @IBOutlet weak var dataCollectionView: UICollectionView!
    
    private lazy var data : [MusicData] = []
    private lazy var modelC = TypeCViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        generateDataAry()
       
    }
    @IBAction func insertRowAction(_ sender: Any) {
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        reUpdateTheTable()
    }
}

extension MusicViewControler {
    
    final private func setupUI(){
        if let layout : UICollectionViewFlowLayout = dataCollectionView.collectionViewLayout as?UICollectionViewFlowLayout{
            layout.estimatedItemSize = CGSize(width: UIScreen.main.bounds.width, height: 50)
//            layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: 100)
        }
//        dataCollectionView.register(TypeACell.self, forCellWithReuseIdentifier: "TypeACell")
        dataCollectionView.register(UINib(nibName: "TypeACell", bundle: nil), forCellWithReuseIdentifier: "TypeACell")
        dataCollectionView.register(UINib(nibName: "TypeCCell", bundle: nil), forCellWithReuseIdentifier: "TypeCCell")
    }
    
    final private func generateDataAry(){

//        data.append(MusicData(nibName: "TypeACell", height: 100, index: Box<Int>(nil), info: Box<String>(nil)))
//        data.append(MusicData(nibName: "TypeBCell", height: 180, index: Box<Int>(nil), info: Box<String>(nil)))
//        data.append(MusicData(nibName: "TypeACell", height: 100, index: Box<Int>(nil), info: Box<String>(nil)))
//        data.append(MusicData(nibName: "TypeACell", height: 100, index: Box<Int>(nil), info: Box<String>(nil)))
//        data.append(MusicData(nibName: "TypeDCell", height: 130, index: Box<Int>(nil), info: Box<String>(nil)))
//        data.append(MusicData(nibName: "TypeCCell", height: 120, index: Box<Int>(nil), info: Box<String>(nil)))
//        data.append(MusicData(nibName: "TypeACell", height: 120, index: Box<Int>(nil), info: Box<String>(nil)))
//        data.append(MusicData(nibName: "TypeACell", height: 115, index: Box<Int>(nil), info: Box<String>(nil)))
//        data.append(MusicData(nibName: "TypeACell", height: 130, index: Box<Int>(nil), info: Box<String>(nil)))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 120, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 140, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 130, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 120, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeCCell", height: 170, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 120, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 150, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))
        data.append(MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0")))

       
        
    }
    
    final private func reUpdateTheTable(){
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 4) {
            let newMusciDataA = MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0"))
            let newMusciDataB = MusicData(nibName: "TypeACell", height: 100, index: Observable<Int>(0), info: Observable<String>("0"))
            
            self.data.remove(at: 1)
            self.data.remove(at: 0)
            self.data.insert(contentsOf: [newMusciDataA,newMusciDataB], at: 0)
          
           
    
                     
            DispatchQueue.main.async {
                
                
                let indexPath : [IndexPath] =  [[0,1],[0,2]]
                
                self.dataCollectionView.performBatchUpdates {
                    self.dataCollectionView.deleteItems(at: indexPath)
                    self.dataCollectionView.insertItems(at: indexPath)
                    
                } completion: { completion in
//             
                }
            }
        }
    }
}

extension MusicViewControler : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let nibName = data[indexPath.row].nibName
        
        //collectionView.register(UINib(nibName: nibName, bundle: nil), forCellWithReuseIdentifier: nibName)

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: nibName, for: indexPath)
        
        if let tempCell = cell as? CellProtocols{
            
            tempCell.setupCell(index: indexPath.row, data : data[indexPath.row])
        }else if let cellC = cell as? TypeCCell{
            cellC.setupCell(index:  indexPath.row, data: data[indexPath.row], viewModel: modelC)
        }
        return cell
    }
    
}

//extension MusicViewControler : UICollectionViewDelegateFlowLayout{
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let height = data[indexPath.row].height
//        return CGSize(width: UIScreen.main.bounds.width, height: height)
//    }
//}
