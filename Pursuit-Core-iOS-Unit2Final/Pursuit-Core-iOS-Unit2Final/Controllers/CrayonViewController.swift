//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
    @IBOutlet weak var myCrayonTableView: UITableView!
    private var crayons = [Crayon]()
    
    override func viewDidLoad() {
    super.viewDidLoad()
        title = "My CrayonBox 🖍"
        myCrayonTableView.dataSource = self
        crayons = Crayon.allTheCrayons
  }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let myDestination = segue.destination as? CrayonDetailViewController,
        let indexPath = myCrayonTableView.indexPathForSelectedRow else {fatalError("Error Check Your Code aka Prepare for segue")}
        myDestination.crayonIExpect = crayons[indexPath.row]
    }
    
    
}


extension CrayonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCrayonCell = myCrayonTableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let crayonBox = crayons[indexPath.row]
        myCrayonCell.textLabel?.text = crayonBox.name
        myCrayonCell.detailTextLabel?.text = crayonBox.hex
        myCrayonCell.backgroundColor = UIColor(red: CGFloat(crayonBox.red), green: CGFloat(crayonBox.green), blue: CGFloat(crayonBox.blue), alpha: CGFloat(crayonBox.alpha))
        return myCrayonCell
    }
    
   
    
    
}
