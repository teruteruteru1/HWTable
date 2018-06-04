//
//  ViewController.swift
//  HWTable
//
//  Created by Yasuteru on 2018/06/03.
//  Copyright © 2018年 Yasuteru. All rights reserved.
//

import UIKit

var movieDataBase = ["Solo: A Star Wars Story","Sid & Aya: Not A Love Story","Kasal","Book Club","211","Dead Pool 2","Avengers: Infinity War"]
var movieimg = ["solo.jpg","Sid&Aya.jpg","Kasal.jpg","bookclub.jpg","211.jpg","deadpool.jpg","avengers.jpg"]


class FirstViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource{
    
    @IBOutlet weak var myTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.delegate = self
        myTableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieDataBase.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell!
        if indexPath.row % 2 == 1 {
            cell = tableView.dequeueReusableCell(withIdentifier: "cellodd", for: indexPath)
        }else {
            cell = tableView.dequeueReusableCell(withIdentifier: "celleven", for: indexPath)
        }
        cell.textLabel?.text = movieDataBase[indexPath.row]
        print(movieDataBase[indexPath.row])
        return cell
        
    }
    var selectedIndex:Int!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath,"だよ")
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "pages", sender: nil)
    }

    //    戻ってきた時に発動する関数を先に書いて
    //    storybardでbuttonからFirstViewControllerのExitへつなぐことで戻れる
    @IBAction func exitview(_sender: UIButton) {
        print("もどる")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 遷移先に情報を渡す処理
        //次の画面のインスタンスを生成
        let dvc:DetailViewController1 = segue.destination as! DetailViewController1
        
        // 次の画面のプロパティ passedIndexに選択された行番号を渡す
        dvc.passedIndex = selectedIndex
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

