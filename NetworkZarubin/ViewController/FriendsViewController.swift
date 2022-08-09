//
//  FriendsViewController.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 16.07.2022.
//

import UIKit

class FriendsViewController: UIViewController {

    @IBOutlet weak var friendsSearchBar: UISearchBar!
    @IBOutlet weak var friendsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let getFriands = GetFriends()
        getFriands.getFriends()
        
        
    }

}
