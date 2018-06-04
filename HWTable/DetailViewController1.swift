//
//  DetailViewController1.swift
//  HWTable
//
//  Created by Yasuteru on 2018/06/04.
//  Copyright © 2018年 Yasuteru. All rights reserved.
//

import UIKit

class DetailViewController1: UIViewController {
    
    var movieimg = ["solo.jpg","Sid&Aya.jpg","Kasal.jpg","bookclub.jpg","211.jpg","deadpool.jpg","avengers.jpg"]
    var moviedescription = ["During an adventure into the criminal underworld, Han Solo meets his future copilot Chewbacca and encounters Lando Calrissian years before joining the Rebellion.","t follows Sid who suffers from insomnia and meets Aya who he hires to accompany him in his sleepless nights.","Lia Marquez (Bea Alonzo) is a simple lass who is set to marry Cebu's most eligible bachelor Philip Cordero (Paulo Avelino), who is currently running to clinch the mayoral position after his father's term ends. However, things get complicated when Lia's ex-boyfriend Wado dela Costa (Derek Ramsay) returns to work for them in a project that will help Philip win the elections. Inevitably, feelings resurface and doubts arise. As we get closer to the wedding day, Lia becomes unsure if she is choosing the right man to marry, torn between the man from her past and the man she's building a future with.","Four lifelong friends have their lives forever changed after reading 50 Shades of Grey in their monthly book club.","Officer Mike Chandler and a young civilian passenger find themselves under-prepared and outgunned when fate puts them squarely in the crosshairs of a daring bank heist in progress by a fearless team of highly and heavily trained men.","Mutant mercenary Wade Wilson a.k.a. Deadpool brings together a team of fellow mutant to protect a young boy of supernatural abilities from the brutal and time-traveling mutant, Cable.","Two years after the events of Captain America: Civil War, Thanos arrives on Earth to collect the Infinity Stones for a gauntlet that will allow him to bend reality to his will. The Avengers unite to battle with the Guardians of the Galaxy to stop Thanos before he succeeds on his plans to end the universe."]
    
    @IBOutlet weak var mylabel: UILabel!
    
    var passedIndex:Int? = nil
    @IBOutlet weak var myImgView: UIImageView!
    @IBOutlet weak var myTextView: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mylabel.text = movieDataBase[passedIndex!]
//        myImgView.image = UIImage(named: "solo.jpg")
        myImgView.image = UIImage(named: movieimg[passedIndex!])
        print(movieimg[passedIndex!])
        myTextView.text = moviedescription[passedIndex!]
        
    }

    @IBAction func schejule(_ sender: UIButton) {
        print("スケジュールへ")
        let alert = UIAlertController(title: "スケジュールへ", message: "移動しますか？", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler:{action in
            self.performSegue(withIdentifier: "segueko", sender: nil
            )}))
        alert.addAction(UIAlertAction(title: "NO", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("遷移する直前")
        print(segue.identifier!)
        
        let dvc:DetailViewController2 = segue.destination as! DetailViewController2
        
        // 次の画面のプロパティ passedIndexに選択された行番号を渡す
        dvc.passedIndex = self.passedIndex
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
