//
//  MainViewController.swift
//  B10715039_HW2
//
//  Created by mac12 on 2022/3/10.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    var names = ["a", "b", "c", "d", "e"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let alert = UIAlertController(title: "Row Selected", message: "You", preferredStyle: .alert)
//        let action = UIAlertAction(title: "Yes", style: .default, handler: nil)
//        alert.addAction(action)
//        present(alert, animated: true, completion: nil)
        toDataView(name: "Yes")
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    @IBAction func insertButtonClick(_ sender: Any) {
        tableView.isEditing = true
        let alert = UIAlertController(title: "Row Selected", message: "You", preferredStyle: .alert)
        let action = UIAlertAction(title: "Yes", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    @IBAction func deleteButtonClick(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func toDataView(name: String) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "DataView") {
            show(vc, sender: self)
        }
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
