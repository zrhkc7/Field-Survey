//
//  FieldObservationDetailViewController.swift
//  Field Survey
//
//  Created by Zach Hogan on 10/30/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class FieldObservationDetailViewController: UIViewController {

    var fieldEvent: FieldEvent?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var fieldIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        fieldIconImageView.image = fieldEvent?.field.image
        titleLabel.text = fieldEvent?.title
        descriptionLabel.text = fieldEvent?.description
        
        if let date = fieldEvent?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
