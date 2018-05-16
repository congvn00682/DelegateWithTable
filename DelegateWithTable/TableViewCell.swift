//
//  TableViewCell.swift
//  DelegateWithTable
//
//  Created by Vu Ngoc Cong on 5/16/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

protocol TableViewCellDelegate: class {
    func editingText(string: String)
    
}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var textField: UITextField!
    var delegate: TableViewCellDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBAction func save(_ sender: Any) {
        delegate?.editingText(string: textField.text ?? "")
    }
    
}
