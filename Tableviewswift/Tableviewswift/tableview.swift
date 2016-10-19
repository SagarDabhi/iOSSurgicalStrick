//
//  tableview.swift
//  Tableviewswift
//
//  Created by Perfection Developer on 19/10/16.
//  Copyright © 2016 Perfection Developer. All rights reserved.
//

import Foundation
import UIKit


class tableview : UIViewController ,UITableViewDelegate ,UITableViewDataSource
{
    @IBOutlet weak var objTable: UITableView!
    var Fruitarray : NSMutableArray = []
    var titleArray : NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Fruitarray = ["Apple","Banana","Strobary","Pineapple","Olive","samsung","Redmi","iphone","Lava","intel","Sony","Intex","Samsung","Onida","Ownix"]
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Fruitarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        cell.textLabel?.text = "\(Fruitarray[indexPath.row])"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected: \(indexPath.row)")
    }
    
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView)
    {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
