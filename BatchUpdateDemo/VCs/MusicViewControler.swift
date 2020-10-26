//
//  MusicViewControler.swift
//  BatchUpdateDemo
//
//  Created by Shine on 2020/10/26.
//

import UIKit

struct MusicData {
    var nibName : String
    var height : CGFloat
}

final class MusicViewControler: UIViewController {
    @IBOutlet weak var dataCollectionView: UICollectionView!
    
    private lazy var data : [MusicData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        generateDataAry()
       
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
    }
    
    final private func generateDataAry(){
        data.append(MusicData(nibName: "TypeACell", height: 100))
        data.append(MusicData(nibName: "TypeBCell", height: 180))
        data.append(MusicData(nibName: "TypeACell", height: 100))
        data.append(MusicData(nibName: "TypeACell", height: 100))
        data.append(MusicData(nibName: "TypeDCell", height: 130))
        data.append(MusicData(nibName: "TypeCCell", height: 120))
        data.append(MusicData(nibName: "TypeACell", height: 120))
        data.append(MusicData(nibName: "TypeACell", height: 115))
        data.append(MusicData(nibName: "TypeACell", height: 130))
        
    }
    
    final private func reUpdateTheTable(){
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 4) {
            let newMusciDataA = MusicData(nibName: "TypeACell", height: 100)
            let newMusciDataB = MusicData(nibName: "TypeBCell", height: 180)
            self.data.remove(at: 1)
            self.data.remove(at: 0)
            self.data.insert(contentsOf: [newMusciDataA,newMusciDataB], at: 0)
          
           
    
                     
            DispatchQueue.main.async {
                
                
                let indexPath : [IndexPath] =  [[0,1],[0,2]]
                
                self.dataCollectionView.performBatchUpdates {
                    self.dataCollectionView.deleteItems(at: indexPath)
                    self.dataCollectionView.insertItems(at: indexPath)
                    
                } completion: { completion in
                    
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
        
        collectionView.register(UINib(nibName: nibName, bundle: nil), forCellWithReuseIdentifier: nibName)
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: nibName, for: indexPath)
        
        if let tempCell = cell as? CellProtocols{
            
            tempCell.setupCell(index: indexPath.row, data : data[indexPath.row])
        }
        return cell
    }
    
}
