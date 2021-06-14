//
//  HomeViewController.swift
//  2DirectionScroll
//
//  Created by Krishna Kushwaha on 14/06/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    var categories = ["A", "B", "C", "D", "E","F", "G","H","I","J","K","L","M","N","O","P","Q", "R","S","T","U","V","W","X","Y","Z"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openCloseMenu(_ sender: Any) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SideViewController") as! SideViewController
//    self.navigationController?.pushViewController(vc, animated: true)
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromLeft
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
//        present(vc, animated: true, completion: nil)
            self.navigationController?.pushViewController(vc, animated: true)

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return categories[section]
        }
      
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }

        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let homeCell =  tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as! HomeCell
//        homeCell.textLabel?.text = "homeCell: " +  String(indexPath.row)
        return homeCell
    }
    
}
