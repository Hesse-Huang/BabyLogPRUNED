//
//  FeedLogAddViewController.swift
//  BabyLog
//
//  Created by Whitney Deng on 16/9/2019.
//  Copyright © 2019 Whitney Deng. All rights reserved.
//

import UIKit

class FeedLogVC: UIViewController
{
//UI VARIABLES
    @IBOutlet weak var setTime_Datepicker: UIDatePicker!
    @IBOutlet weak var amount_TextField: UITextField!
    @IBOutlet weak var type_Picker: UIPickerView!
    @IBOutlet weak var notes_TextField: UITextField!
    
//UI RELATED VARIABLES
    let foodTypeDatepickerList = ["Breast", "Formula", "Solid"]
    
//NON UI VARAIBLES
    let feedLog = FeedLog()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func valueChanged(_ sender: UIDatePicker)
    {
        feedLog.setTime(t: setTime_Datepicker.date)
        let formatter = DateFormatter()
        let dateString: String = formatter.string(from:setTime_Datepicker.date) //TODO: TESTING
        amount_TextField.text?.append(dateString) //TODO: TESTING
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
