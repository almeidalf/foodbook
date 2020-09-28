//
//  CellReceitas.swift
//  FoodBook
//
//  Created by Reply on 27/09/20.
//  Copyright © 2020 FoodBook. All rights reserved.
//

import UIKit

class CellReceitas: UITableViewCell {

    @IBOutlet weak var imagemReceita: UIImageView!
    @IBOutlet weak var lblTituloReceita: UILabel!
    @IBOutlet weak var lblDescricao: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
