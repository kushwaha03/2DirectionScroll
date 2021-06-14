//
//  SideViewController.swift
//  2DirectionScroll
//
//  Created by Krishna Kushwaha on 14/06/21.
//

import UIKit

class SideViewController: UIViewController {
    

    
    var menu: [SideMenuModel] = [
        SideMenuModel(icon: UIImage(systemName: "house.fill")!, title: "Home"),
        SideMenuModel(icon: UIImage(systemName: "music.note")!, title: "Music"),
        SideMenuModel(icon: UIImage(systemName: "film.fill")!, title: "Movies"),
        SideMenuModel(icon: UIImage(systemName: "person.fill")!, title: "Profile"),
        SideMenuModel(icon: UIImage(systemName: "slider.horizontal.3")!, title: "Settings"),
        SideMenuModel(icon: UIImage(systemName: "hand.thumbsup.fill")!, title: "Like us on facebook")
    ]
    var defaultHighlightedCell: Int = 0

    
    @IBOutlet var tableView: UITableView!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension SideViewController : UITableViewDelegate, UITableViewDataSource {
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sideCell = tableView.dequeueReusableCell(withIdentifier: "SideCell", for: indexPath) as! SideCell
        sideCell.textLabel?.text = menu[indexPath.row].title
        sideCell.textLabel?.textAlignment = .center
        sideCell.iconMenuLImg.image = menu[indexPath.row].icon
        
        return sideCell
    }
    
    
}
