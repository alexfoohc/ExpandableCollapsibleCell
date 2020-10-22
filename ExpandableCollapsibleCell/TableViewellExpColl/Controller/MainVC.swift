//
//  ViewController.swift
//  TableViewellExpColl
//
//  Created by Alejandro Hernández Cortés on 22/10/20.
//  Copyright © 2020 Alejandro Hernández Cortés. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var f1TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        f1TableView.delegate = self
        f1TableView.dataSource = self
    }
    
    let f1Teams = [TeamData(title: "Mercedes", message: "Some description about the team"), TeamData(title: "Ferrari", message: "Some description about the team"), TeamData(title: "Red Bull Racing", message: "Some description about the team"), TeamData(title: "Renault", message: "Some description about the team"), TeamData(title: "McLaren", message: "Some description about the team"), TeamData(title: "Racing Point", message: "Some description about the team"), TeamData(title: "AlphaTauri", message: "Some description about the team"), TeamData(title: "Alfa Romeo Racing", message: "Some description about the team"), TeamData(title: "Haas F1 Team", message: "Some description about the team"), TeamData(title: "Williams", message: "Some description about the team")]

    var selectedIndexPath = IndexPath()

}

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return f1Teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = f1TableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TeamCell {
            let teamData = f1Teams[indexPath.row]
            cell.updateViews(data: teamData)
            cell.selectionStyle = .none
            return cell
        }
        else{
            return TeamCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if selectedIndexPath == indexPath {return 200}
        return 90
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if selectedIndexPath == indexPath {
            selectedIndexPath = [0]
            if let cell = f1TableView.cellForRow(at: indexPath) as? TeamCell {
                cell.animate()
            }
        }
        else {
            selectedIndexPath = indexPath
            if let cell = f1TableView.cellForRow(at: indexPath) as? TeamCell {
                cell.animate()
            }
        }
        f1TableView.beginUpdates()
        f1TableView.endUpdates()
    }
}

