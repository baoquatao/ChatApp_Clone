//
//  TeamViewController.swift
//  test
//
//  Created by Viettelimex on 12/04/2022.
//

import UIKit

class TeamViewController: UIViewController, UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listChat.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellChat", for : indexPath)
        
        let currentChat = listChat[indexPath.row]
        
        let lblNickname = cell.viewWithTag(101) as! UILabel
        lblNickname.text = currentChat.GroupName
        
        let imgAvt = cell.viewWithTag(100) as! UIImageView
        imgAvt.image = UIImage(named: currentChat.avatar)
        
        let lblMessenger = cell.viewWithTag(102) as! UILabel
        lblMessenger.text = currentChat.Participants
        

        
        
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            
        
            
            tableView.beginUpdates()
            listChat.remove(at:indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            tableView.endUpdates()
            
        }
    }
    
    
    
    
    struct Chat{
        var GroupName: String
        var Participants: String
        var avatar : String
        
    }

    @IBOutlet weak var tblMenu: UITableView!
    
    var listChat = [Chat]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblMenu.dataSource = self
        tblMenu.delegate = self
        
        let chat1 = Chat(GroupName: "Family", Participants: "10 participants", avatar: "Ellipse 10")
        listChat.append(chat1)
        let chat2 = Chat(GroupName: "School", Participants: "70 participants", avatar: "Ellipse 10")
        listChat.append(chat2)
        let chat3 = Chat(GroupName: "Basketball Team", Participants: "1 participants", avatar: "Ellipse 7")
        listChat.append(chat3)
        let chat4 = Chat(GroupName: "Art Team", Participants: "0 participants", avatar: "Ellipse 12")
        listChat.append(chat4)
        
            
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
        
    
}
