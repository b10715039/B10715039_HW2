//
//  MainViewController.swift
//  B10715039_HW2
//
//  Created by mac12 on 2022/3/10.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    var isRemoving = false
    var names = ["柴犬", "黃金獵犬", "哈士奇", "紅貴賓", "巴哥犬"]
    var images = ["Shiba", "Golden_Retriever", "Husky", "Poodie", "Pug"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        cell.imageView?.layer.cornerRadius = 20
        cell.imageView?.clipsToBounds = true
        cell.imageView?.contentMode = .scaleAspectFit
        cell.imageView?.image = UIImage(named: images[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let alert = UIAlertController(title: "Row Selected", message: "You", preferredStyle: .alert)
//        let action = UIAlertAction(title: "Yes", style: .default, handler: nil)
//        alert.addAction(action)
//        present(alert, animated: true, completion: nil)
        toDataView(name: names[indexPath.row], image: images[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        if isRemoving {
            return .delete
        }
        else {
            return .insert
        }
    }
    @IBAction func insertButtonClick(_ sender: Any) {
        tableView.isEditing = true
        isRemoving = false
    }
    @IBAction func deleteButtonClick(_ sender: Any) {
        tableView.isEditing = true
        isRemoving = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func toDataView(name: String, image: String) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DataView") as! DataViewController
        vc.showText = name
        vc.imageName = image
        show(vc, sender: self)
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
