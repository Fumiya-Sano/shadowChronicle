//
//  MasterViewController.swift
//  shadow_chronicle
//
//  Created by 佐野文哉 on 2018/09/16.
//  Copyright © 2018年 Jenove_ze. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    //DetailViewController型の変数の宣言
    var warRecodeController: DetailViewController? = nil
    
    //デッキ名の変数の宣言
    var deckName: String = ""
    //デッキリストの宣言
    var deckList = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.leftBarButtonItem = editButtonItem
        //デッキ追加ボタンの宣言
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
        //右上に配置
        navigationItem.rightBarButtonItem = addButton
        
        //topとDetailの紐付け
        if let split = splitViewController {
            let controllers = split.viewControllers
            warRecodeController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
        //保存していたデッキリストを表示
        let userDefaults = UserDefaults.standard
        if let value = userDefaults.stringArray(forKey: "deckList") {
            deckList = value
            let rowNum = deckList.count - 1
            if rowNum < 0 {
                
            } else if rowNum == 0 {
                let indexPath = IndexPath(row: 0, section: 0)
                let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
                cell.accessoryType = .disclosureIndicator
                let deckName = deckList[0]
                cell.textLabel!.text = deckName
                self.tableView.insertRows(at: [indexPath], with: .automatic)
            }else {
                for i in 0...rowNum {
                    let indexPath = IndexPath(row: i, section: 0)
                    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
                    cell.accessoryType = .disclosureIndicator
                    let deckName = deckList[i]
                    cell.textLabel!.text = deckName
                    self.tableView.insertRows(at: [indexPath], with: .automatic)
                   
                }
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //デッキの追加
    @objc
    func insertNewObject(_ sender: Any) {
        //アラートダイアログを生成
        let alertController = UIAlertController(title: "デッキの追加",
                                                message: "デッキ名を入力してください",
                                                preferredStyle: UIAlertController.Style.alert)
        //テキストエリアの追加
        alertController.addTextField(configurationHandler: nil)
        //OKボタンの追加
        let okAction = UIAlertAction(title: "OK",
                                     style: UIAlertAction.Style.default) {
                                        (action: UIAlertAction) in
                                        //OKボタンがタップされた時
                                        if let textField = alertController.textFields?.first{
                                            self.deckList.insert(textField.text!, at: 0)
                                            let indexPath = IndexPath(row: 0, section: 0)
                                            self.tableView.insertRows(at: [indexPath], with: .automatic)
                                            let userDefaults = UserDefaults.standard
                                            userDefaults.set(self.deckList, forKey: "deckList")
                                            userDefaults.synchronize()
                                        }
        }
        alertController.addAction(okAction)
        let cancelButtan = UIAlertAction(title: "CANCEL",
                                         style: UIAlertAction.Style.cancel, handler: nil)
        //CANCELボタンを追加
        alertController.addAction(cancelButtan)
        
        //アラートダイアログを表示
        present(alertController, animated: true, completion: nil)
        
    }
    
    // MARK: - Segues
    //デッキ名を戦績画面にdetailItemとして渡す
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let deckName = deckList[indexPath.row]
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.detailItem = deckName
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
    
    // MARK: - Table View
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return deckList.count
    }
    //セルにデッキ名を表示
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.accessoryType = .disclosureIndicator
        
        let deckName = deckList[indexPath.row]
        cell.textLabel!.text = deckName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    //デッキの削除
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deckList.remove(at: indexPath.row)
            let userDefaults = UserDefaults.standard
            userDefaults.set(self.deckList, forKey: "deckList")
            userDefaults.synchronize()
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
    
    
}



