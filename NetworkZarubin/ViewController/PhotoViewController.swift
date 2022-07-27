//
//  PhotoViewController.swift
//  NetworkZarubin
//
//  Created by Jane Z. on 19.07.2022.
//

import UIKit

class PhotoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let getPhoto = GetPhoto()
        getPhoto.getPhoto()
    }
    



}
