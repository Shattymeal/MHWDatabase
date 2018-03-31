//
//  SearchTableViewController.swift
//  MHWDatabase
//
//  Created by Neil Shetty on 3/31/18.
//  Copyright © 2018 Neil Shetty. All rights reserved.
//

import UIKit
import RxSwift

class SearchTableViewController: UITableViewController {
    let compendium = MonsterCompendium()
    let armory = Armory()
    var monsters = [Monster]()
    var armor = [Armor]()
    var monsterPublish: PublishSubject<Monster>!
    var armorPublish: PublishSubject<Armor>!
    var disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.monsterPublish = self.compendium.dataAccess.getMonsters(chunk: nil)
        self.armorPublish = self.armory.dataAccess.getArmor(chunk: nil)
        self.armorPublish.asObservable().subscribe(onNext: { (armor) in
            DispatchQueue.main.async {
                self.armor.append(armor)
                self.tableView.reloadData()
            }
        }).disposed(by: self.disposeBag)

//        self.monsterPublish.asObservable().subscribeOn(ConcurrentMainScheduler.instance).subscribe(onNext: { (monster) in
//            self.monsters.append(monster)
//            self.tableView.reloadData()
//        }).disposed(by: self.disposeBag)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.armor.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let armor = self.armor[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "monsterCell", for: indexPath)
        cell.textLabel?.text = armor.name
        cell.detailTextLabel?.text = "\(armor.rarity) \(armor.armorType)"
        // Configure the cell...

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
