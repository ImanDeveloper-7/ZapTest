//
//  UsersListVC.swift
//  ZapTest
//
//  Created by Iman Zabihi on 25/06/2022.
//

import UIKit

class UsersListVC: UIViewController {

    @IBOutlet weak var tbl_users: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.loadListOfUsers()
    }
    
    private func loadListOfUsers() {
        guard let urlString = URL(string: "https://api.github.com/users?since=0") else { return }
        
        APIManager.getUsers(url: urlString) { _ in
            
        }
    }
    
    private func setupUI() {
        self.tbl_users.register(UserCell.nib(), forCellReuseIdentifier: UserCell.identifier)
        self.searchBar.backgroundImage = UIImage()
    }
}

//MARK: - UITableViewDelegate, UITableViewDataSource

extension UsersListVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UserCell.identifier, for: indexPath) as? UserCell else {
            fatalError("UserCell not found")
        }
        
        cell.textLabel?.text = "Hello World!"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        self.performSegue(withIdentifier: "goToProfile", sender: indexPath)
    }
}
