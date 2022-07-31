//
//  ProfileViewController.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 31.07.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let getProfile = GetUsers()
        getProfile.getUsers()
    }

}
