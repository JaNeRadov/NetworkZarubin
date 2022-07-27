//
//  GroupViewController.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 17.07.2022.
//

import UIKit

class GroupViewController: UIViewController {

    @IBOutlet weak var groupsTableView: UITableView!
    @IBOutlet weak var groupsSearchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()

        let getGroups = GetGroups()
        getGroups.getGroup()
      
    }
    

    

}
