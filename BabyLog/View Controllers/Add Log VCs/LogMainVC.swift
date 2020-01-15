//
//  AddLogViewController.swift
//  BabyLog
//
//  Created by Whitney Deng on 25/8/2019.
//  Copyright © 2019 Whitney Deng. All rights reserved.
//

import UIKit

class LogMainVC: UIViewController
{
    @IBOutlet weak var addFeedView: FeedLogVC!
    @IBOutlet weak var addSleepView: SleepLogVC!
    @IBOutlet weak var addPoopView: PoopLogVC!
    @IBOutlet weak var addCryView: CryLogVC!
    
    @IBOutlet weak var save_Button: UIBarButtonItem!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    var viewList: [UIViewController]!
    var record: Record!
    var currentView: UIViewController!

//METHODS
    override func viewDidLoad()
    {
        super.viewDidLoad()
//        viewAppear(visibleView: addSleepView)
        viewList = [addFeedView, addSleepView, addPoopView, addCryView]
        // Do any additional setup after loading the view.
    }
    
    //switch the container view
    @IBAction func switchViews(sender: UISegmentedControl) //TODO: CITE: Segment Control https://www.youtube.com/watch?v=A6vxDDAUj2o
    {
        switch sender.selectedSegmentIndex
        {
        case 0:
            viewAppear(visibleView: addFeedView)
            break
        case 1:
            viewAppear(visibleView: addSleepView)
            break
        case 2:
            viewAppear(visibleView: addPoopView)
            break
        case 3:
            viewAppear(visibleView: addCryView)
            break
        default:
            viewAppear(visibleView: addFeedView)
            break
        }
    }
    
    //TODO: METHOD: when save button is pressed, the Log contained in the currently showing UIView will be saved in LOGLIST in RECORD
    
    //makes the other views transparent and the view in the parameter visible
    func viewAppear(visibleView:UIViewController)
    {
        for currentView in viewList
        {
            currentView.view.isHidden = true //TODO: CITE: https://stackoverflow.com/questions/5154536/how-to-hide-the-viewcontroller-at-runtime
        }
        visibleView.view.isHidden = true
        
        currentView = visibleView //record the current visible view
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
