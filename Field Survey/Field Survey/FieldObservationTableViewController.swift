//
//  FieldObservationTableViewController.swift
//  Field Survey
//
//  Created by Zach Hogan on 10/30/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class FieldObservationTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let fieldEvents = FieldEventsJSONLoader.load(fileName: "field_observations")
    
    let dateFormatter = DateFormatter()

    @IBOutlet weak var fieldObservationsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldEvents.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fieldObservationCell", for: indexPath)
        
        if let cell = cell as? FieldEventTableViewCell {
            let fieldEvent = fieldEvents[indexPath.row]
            cell.fieldIconImageView.image = fieldEvent.field.image
            cell.titleLabel.text = fieldEvent.title
            cell.dateLabel.text = dateFormatter.string(from: fieldEvent.date)
            cell.descriptionLabel.text = fieldEvent.description
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FieldObservationDetailViewController,
            let row = fieldObservationsTableView.indexPathForSelectedRow?.row {
            destination.fieldEvent = fieldEvents[row]
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
