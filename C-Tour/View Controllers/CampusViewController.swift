//
//  CampusViewController.swift
//  C-Tour
//
//  Created by Maxwell Kumbong on 4/24/23.
//

import UIKit


class CampusViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    struct College {
        var name: String
        var location: String
        var logopic: UIImage
    }
    

    let colleges = [
        College(name: "Swarthmore", location: "500 College Ave, Swarthmore, PA 19081", logopic: UIImage(named: "Logo")!) ,
        College(name: "Haverford", location: "370 Lancaster Ave, Haverford, PA 19041", logopic: UIImage(named: "haverford")!),
        College(name: "UPenn", location: "UPenn University of, Philadelphia, PA 19104", logopic: UIImage(named: "UPenn")!),
        College(name: "Bryn Mawr", location: "101 N Merion Ave, Bryn Mawr, PA 19010", logopic: UIImage(named: "Bryn")!)
    ]
    
    var filteredData = [College]()
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching{
            return filteredData.count
        }
        else{
            return colleges.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let college = colleges[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SearchCell
        if searching{
            cell.schoolLabel?.text = filteredData[indexPath.row].name
            cell.locationLabel?.text = filteredData[indexPath.row].location
            cell.logo?.image = filteredData[indexPath.row].logopic
        }
        else{
            cell.schoolLabel.text = college.name
            cell.locationLabel.text = college.location
            cell.logo.image = college.logopic
            
        }
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let college: College
        if searching {
            college = filteredData[indexPath.row]
        } else {
            college = colleges[indexPath.row]
        }
        performSegue(withIdentifier: "tour", sender: college)
        table.deselectRow(at: indexPath, animated: true)
        table.reloadData()
    }


    

}

extension CampusViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = colleges.filter({$0.name.lowercased().contains(searchText.lowercased()) || $0.location.lowercased().contains(searchText.lowercased())})
        searching = true
        table.reloadData()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        table.reloadData()
    }
}
