//
//  MenuViewController.swift
//  test
//
//  Created by Viettelimex on 05/04/2022.
//

import UIKit



class MenuViewController: UIViewController, UITableViewDataSource , UITableViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource{
    
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listChat.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellChat", for : indexPath)
        
        let currentChat = listChat[indexPath.row]
        
        let lblNickname = cell.viewWithTag(101) as! UILabel
        lblNickname.text = currentChat.nickname
        
        let imgAvt = cell.viewWithTag(100) as! UIImageView
        imgAvt.image = UIImage(named: currentChat.avatar)
        
        let lblMessenger = cell.viewWithTag(102) as! UILabel
        lblMessenger.text = currentChat.messenger
        
        let lblTime = cell.viewWithTag(103) as! UILabel
        lblTime.text = "\(currentChat.time) mins"
        
        
        
        
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
        var nickname: String
        var messenger: String
        var avatar : String
        var time : Int
        
    }
    


    
    
    @IBOutlet weak var tblMenu: UITableView!
    
    var listChat = [Chat]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblMenu.dataSource = self
        tblMenu.delegate = self
        
        let chat1 = Chat(nickname: "alex", messenger: "Hi", avatar: "user (1) 1", time: 10)
        listChat.append(chat1)
        let chat2 = Chat(nickname: "flex", messenger: ".....", avatar: "art 1900 (1)", time: 80)
        listChat.append(chat2)
        let chat3 = Chat(nickname: "brony", messenger: "Hi, i'm brony my dad is lebron james Wicked", avatar: "art 1900", time: 20)
        listChat.append(chat3)
        let chat4 = Chat(nickname: "mola", messenger: "Want go outsite?", avatar: "art 1900 (3)", time: 1)
        listChat.append(chat4)
        let chat5 = Chat(nickname: "alex", messenger: "Hi", avatar: "user (1) 1", time: 10)
        listChat.append(chat5)
        let chat6 = Chat(nickname: "flex", messenger: ".....", avatar: "art 1900 (1)", time: 80)
        listChat.append(chat6)
        let chat7 = Chat(nickname: "brony", messenger: "Hi, i'm brony my dad is lebron james Wicked", avatar: "art 1900", time: 20)
        listChat.append(chat7)
        let chat8 = Chat(nickname: "mola", messenger: "Want go outsite?", avatar: "art 1900 (3)", time: 1)
        listChat.append(chat8)
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    // Stories
    
    var imageArroy = [UIImage(named: "Ellipse 10"), UIImage(named: "Ellipse 7"),UIImage(named: "Ellipse 12"),UIImage(named: "Ellipse 29"),UIImage(named: "Ellipse 10"),UIImage(named: "Ellipse 10"),UIImage(named: "Ellipse 10"),UIImage(named: "Ellipse 10"), UIImage(named: "Ellipse 7"),UIImage(named: "Ellipse 12"),UIImage(named: "Ellipse 29"),UIImage(named: "Ellipse 10"),UIImage(named: "Ellipse 10"),UIImage(named: "Ellipse 10"),UIImage(named: "Ellipse 10"), UIImage(named: "Ellipse 7"),UIImage(named: "Ellipse 12"),UIImage(named: "Ellipse 29"),UIImage(named: "Ellipse 10"),UIImage(named: "Ellipse 10"),UIImage(named: "Ellipse 10"),UIImage(named: "Ellipse 10"), UIImage(named: "Ellipse 7"),UIImage(named: "Ellipse 12"),UIImage(named: "Ellipse 29"),UIImage(named: "Ellipse 10"),UIImage(named: "Ellipse 10"),UIImage(named: "Ellipse 10"),]
    
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArroy.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoriesCollectionViewCell", for: indexPath) as! StoriesCollectionViewCell
        
        cell.Image.image = imageArroy[indexPath.row]
        
        return cell
    }
    
    //

}

