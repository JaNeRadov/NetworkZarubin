//
//  FriendsViewController.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 16.07.2022.
//

import UIKit
import RealmSwift

class FriendsViewController: UIViewController {
    

    @IBOutlet weak var friendsSearchBar: UISearchBar!
    @IBOutlet weak var friendsTableView: UITableView!
    
   private var myFriends = [DBFriendsItems]()
    let customeTableViewCellReusedIdentifire = "customeTableViewCellReusedIdentifire"
    private var realmNotification: NotificationToken?
    private var firstFriendsNotification: NotificationToken?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        friendsTableView.dataSource = self
        friendsTableView.delegate = self
        friendsTableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: customeTableViewCellReusedIdentifire)

        if !UserDefaults.standard.bool(forKey: "isNMainScreenFirstLaunch" ) {
            let getFriends = GetFriends()
            getFriends.getFriends()
            
            UserDefaults.standard.set(true, forKey: "isNMainScreenFirstLaunch")
        }
        
        guard let realm = try? Realm() else { return }
        makeObserver(realm: realm)
        friendsTableView.reloadData()
        
        firstFriendsNotification = realm
            .objects(DBFriendsItems.self)
            .first?
            .observe(keyPaths: [],  { (changes: ObjectChange<DBFriendsItems>) in
                print(changes)
                switch changes {
                case .error(let error):
                    print(error)
                case .change(let value, let propertiesArray):
                    print("\(value.firstName) --> \(propertiesArray)")
                case .deleted:
                    print("delete")
                }
            })
        
         
        
        
    }
    private func makeObserver(realm: Realm) {
        let objs = realm.objects(DBFriendsItems.self)
        
        realmNotification = objs.observe({changes in
            switch changes {
            case let .initial(objs):
                self.myFriends = Array(objs)
                self.friendsTableView.reloadData()
            case .error(let error): print(error)
            case let .update(myFriends, deletions, insertions, modifications):
                DispatchQueue.main.async { [self] in
                    self.myFriends = Array(myFriends)
                    
                    let delitionIndexSet = deletions.reduce(into: IndexSet(), {$0.insert($1)})
                    let insertIndexSet = insertions.reduce(into: IndexSet(), {$0.insert($1)})
                    let modificationIndexSet = modifications.reduce(into: IndexSet(), {$0.insert($1)})
                    
                    friendsTableView.beginUpdates()
                    
                    friendsTableView.deleteSections(delitionIndexSet, with: .automatic)
                    friendsTableView.insertSections(insertIndexSet, with: .automatic)
                    friendsTableView.reloadSections(modificationIndexSet, with: .automatic)
                    
                    friendsTableView.endUpdates()
                    
                }
            }
        })
        
        
    }

}




extension FriendsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: customeTableViewCellReusedIdentifire, for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        
        let friend = myFriends[indexPath.row]
        cell.configure(image: UIImage(named: friend.avatar), name: friend.firstName, friendSecondName: friend.lastName)
        
        return cell
                
    }

}

extension FriendsViewController: UITableViewDelegate {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        
    }
}
