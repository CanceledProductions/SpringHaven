//
//  CharacterCell.swift
//  SpringHaven
//
//  Created by Sebastian Pena on 11/5/23.
//

import UIKit

class CharacterCell: UITableViewCell {

    @IBOutlet weak var characterNameLabel: UILabel!
    
    @IBOutlet weak var characterDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    /// Configures the cell's UI for the given track.
    func configure(with character: Character) {
        characterNameLabel.text = character.characterName
        characterDescriptionLabel.text = character.characterDescription
    }

}
