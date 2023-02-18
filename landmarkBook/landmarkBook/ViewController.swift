//
//  ViewController.swift
//  landmarkBook
//
//  Created by kerem on 18.02.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //burda viewController 3 ündende kalıtım alıyor.
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate  = self
        tableView.dataSource = self
    }
//    eğer tableview kullanmak istiyorsak alttaki iki fonksiyonu kullanmak zorunlu
//    numberOfRowsInSection bu fonksiyonda kaç tane  girdi olacağını soruyor.
//    cellForRowAt bu fonksiyonda ise ne göstereceğini soruyor.
//    table view daki her bir kutu bir hücre.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return 10//10 tane girdi olacağını soyledim bu kodla
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
//        cell.textLabel?.text = "test" bu eski kod aşşağıdaki 4 satır ise bu kodun yerine yeni gelen kod.
        var content = cell.defaultContentConfiguration()
        content.text = "TableView"
        content.secondaryText = "Test"
        cell.contentConfiguration = content
        return cell
    }

}

