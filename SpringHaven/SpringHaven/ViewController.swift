//
//  ViewController.swift
//  SpringHaven
//
//  Created by Sebastian Pena on 11/5/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var characters: [Character] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a cell with identifier, "CharacterCell"
        // the `dequeueReusableCell(withIdentifier:)` method just returns a generic UITableViewCell so it's necessary to cast it to our specific custom cell.
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterCell", for: indexPath) as! CharacterCell
        
        // Get the track that corresponds to the table view row
        let character = characters[indexPath.row]

        // Configure the cell with it's associated track
        cell.configure(with: character)

        // Create a UITapGestureRecognizer for each cell
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(cellTapped(_:)))
            cell.addGestureRecognizer(tapGestureRecognizer)

            // Set the index path as a tag to identify the row
            cell.tag = indexPath.row
        
        // return the cell for display in the table view
        return cell
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        characters = Character.mockCharacters
        tableView.dataSource = self
    }

    @IBAction func didTapCell(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "detailSegue", sender: self)

    }
    
    @objc func cellTapped(_ sender: UITapGestureRecognizer) {
        if let cell = sender.view as? UITableViewCell {
            let row = cell.tag // Get the row associated with the tapped cell

            // Assuming that your segue is named "detailSegue"
            self.performSegue(withIdentifier: "detailSegue", sender: row)
        }
    }
}

