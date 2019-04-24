//
//  ViewController.swift
//  ContactTabelView
//
//  Created by student on 4/24/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit
class UserModal {
    var userImage: UIImage?
    var name: String?
    var phone:String?
    
    init(userImage:UIImage,name: String,phone:String) {
        self.userImage = userImage
        self.name = name
        self.phone = phone
    }
}

class ViewController: UIViewController {

    var tabelView = UITableView()
    
    var userArr = [UserModal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      setTableView()
   
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "Brumm_Circle"), name: "Brumm", phone: "Phone: 067-143-12-63"))
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "Iselda_Circle"), name: "Iselda", phone: "Phone: 067-178-12-63"))
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "Sly_Circle"), name: "Sly", phone: "Phone: 067-145-16-63"))
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "Elderbug_Circle"), name: "Elderbug", phone: "Phone: 067-123-12-63"))
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "Lemm_Circle"), name: "Lemm", phone: "Phone: 067-133-22-63"))
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "Grimm_Circle"), name: "Grimm", phone: "Phone: 067-178-12-63"))
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "Hornet_Icon"), name: "Hornet", phone: "Phone: 067-199-12-63"))
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "Legeater_Circle"), name: "Leg Eater", phone: "Phone: 067-110-12-63"))
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "Salubra_Circle"), name: "Salubra", phone: "Phone: 067-166-12-63"))
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "Jiji_Circle"), name: "Confessor Jiji", phone: "Phone: 067-188-19-63"))
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "King_Circle"), name: "The Pale King", phone: " 067-197-19-63"))
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "Nailsmith_Circle"), name: "Nailsmith", phone: "Phone: 067-155-18-63"))
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "Quirrel_Circle-2"), name: "Quirrel", phone: "Phone: 067-122-12-63"))
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "Zote_Circle"), name: "Zote the Mighty", phone: "Phone: 067-133-12-63"))
        userArr.append(UserModal(userImage: #imageLiteral(resourceName: "Brumm_Circle"), name: "Brumm", phone: "Phone: 067-148-12-67"))
       
        
    }
    
    func setTableView() {
        tabelView.frame = self.view.frame
        tabelView.backgroundColor = UIColor.clear
        tabelView.delegate = self
        tabelView.dataSource = self
        tabelView.separatorColor = UIColor.clear
        tabelView.backgroundColor = UIColor.orange
        self.view.addSubview(tabelView)
        
        tabelView.register(CustomTableViewCell.self, forCellReuseIdentifier: "Cell")
    }

}
extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int ) -> Int {
        return userArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        guard let cell = tabelView.dequeueReusableCell(withIdentifier: "Cell",for : indexPath) as? CustomTableViewCell else {fatalError("Unable to create cell")}
      cell.userImage.image = userArr[indexPath.row].userImage
        cell.nameLabel.text = userArr[indexPath.row].name
        cell.phoneLabel.text = userArr[indexPath.row].phone
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 118
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            userArr.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with:.bottom)
        }
    }
    
}

