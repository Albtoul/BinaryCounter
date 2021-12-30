//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Hell on 30/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView:UITableView!
    @IBOutlet weak var totalLabel:UILabel!
    
    var total = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        totalLabel.text = "Total:\(total)"
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource, CustomCellDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countCell", for: indexPath) as! CustomCell
        
        cell.numberLabel.text = "\(pow(10, indexPath.row))"
        cell.delegate = self
        
        return cell
    }
    
    func addToTotal(value: Int) {
        total += value
        totalLabel.text = "Total:\(total)"
    }
    
    func subFromTotal(value: Int) {
        total -= value
        totalLabel.text = "Total:\(total)"
    }
    
}

