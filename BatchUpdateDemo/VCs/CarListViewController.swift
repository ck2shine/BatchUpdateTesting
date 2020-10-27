//
//  CarListViewController.swift
//  BatchUpdateDemo
//
//  Created by i9400503 on 2020/10/27.
//

import UIKit

class CarListViewController: UIViewController {


    @IBOutlet weak var dataTableView: UITableView!
    private lazy var data : [MusicData] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dataTableView.register(TypeTableACell.self, forCellReuseIdentifier: "TypeTableACell")
        generateDataAry()
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

}

extension CarListViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TypeTableACell", for: indexPath)
        let viewModel = data[indexPath.row]
        if let cell = cell as? TypeTableACell{
            cell.setupCell(index: indexPath.row, data: viewModel)
        }
        cell.layoutIfNeeded()
        return cell
    }


}
