//
//  CustomCell.swift
//  BinaryCounter
//
//  Created by Hell on 30/12/2021.
//

import UIKit

protocol CustomCellDelegate: class {
    func addToTotal(value:Int)
    func subFromTotal(value:Int)
}

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var numberLabel:UILabel!
    
    var delegate : CustomCellDelegate?
    
    @IBAction func plusButtonPressed(_ sender:UIButton){
        delegate?.addToTotal(value:Int(numberLabel.text!)!)
    }
    
    @IBAction func minusButtonPressed(_ sender:UIButton){
        delegate?.subFromTotal(value:Int(numberLabel.text!)!)
    }

}
