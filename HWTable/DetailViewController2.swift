//
//  DetailViewController2.swift
//  HWTable
//
//  Created by Yasuteru on 2018/06/04.
//  Copyright © 2018年 Yasuteru. All rights reserved.
//

import UIKit

class DetailViewController2: UIViewController {
    
    var passedIndex:Int? = nil
    @IBOutlet weak var mytextview: UITextView!
    var movietime =
        ["11:00 AM \n2:00 PM \n6:00 PM \n9:00 PM","1:00 pm \n7:00 pm","1:30 pm \n5:30 pm \n9:00","2:00 pm \n6:00 pm \n8:30","10:30am \n2:30 pm \n5:30 pm \n8:30 pm","12:30pm \n3:30 pm \n6:30 pm \n9:30 pm","10:30am \n2:30 pm \n5:30 pm \n8:30 pm"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        mytextview.text = movietime[passedIndex!]
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
