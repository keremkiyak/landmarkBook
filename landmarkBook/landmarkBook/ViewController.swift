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
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        bu da bir hucre secildiginde ne yapim diyen fonksiyon.
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate  = self
        tableView.dataSource = self
        
       
        landmarkNames.append("Colosseum")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonhenge")
        landmarkNames.append("Taj Mahal")
        
         
        landmarkImages.append(UIImage(named: "Colosseum.jpeg")!)//burda ! koymamızın sebebi bu resim var mı yok mu bilmiyor ondan ona bu resmi vereceğimin garantisini istiyor ki uygulama bu resmi çağırdığında olmazsa çökmesin.
        landmarkImages.append(UIImage(named: "GreatWall.jpeg")!)
        landmarkImages.append(UIImage(named: "KremlinPalace.jpeg")!)
        landmarkImages.append(UIImage(named: "StonHenge.jpeg")!)
        landmarkImages.append(UIImage(named: "TajMahal.jpeg")!)
        
    }
//    eğer tableview kullanmak istiyorsak alttaki iki fonksiyonu kullanmak zorunlu
//    numberOfRowsInSection bu fonksiyonda kaç tane  girdi olacağını soruyor.
//    cellForRowAt bu fonksiyonda ise ne göstereceğini soruyor.
//    table view daki her bir kutu bir hücre.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count//10 yazıp 10 tane girdi olacağını soyledebiliriz bunun yerine
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
//        cell.textLabel?.text = "test" bu eski kod aşşağıdaki 4 satır ise bu kodun yerine yeni gelen kod.
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        content.image = landmarkImages[indexPath.row]
        //content.secondaryText = "Test"
        cell.contentConfiguration = content
        return cell
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destionationVC = segue.destination as! DetailsVC
          
        }
    }

}

