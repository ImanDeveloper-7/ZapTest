//
//  ProfileVC.swift
//  ZapTest
//
//  Created by Iman Zabihi on 25/06/2022.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var tbl_profile: UITableView!
    @IBOutlet weak var lbl_userName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    @IBAction func dismiss(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    private func setupUI() {
        self.tbl_profile.register(ProfileCell.nib(), forCellReuseIdentifier: ProfileCell.identifier)
    }
}

extension ProfileVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfileCell.identifier, for: indexPath) as? ProfileCell else {
            fatalError("ProfileCell not found")
        }
        
        cell.textLabel?.text = "Profile"
        
        return cell
    }
}
