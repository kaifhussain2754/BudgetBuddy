import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register the custom cell
        let nib = UINib(nibName: "HomeCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "HomeCellIdentifier")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCellIdentifier", for: indexPath) as? HomeCell else {
                return UITableViewCell()
            }
            
            // Configure the cell
            cell.UserName.text = "User \(indexPath.row)" // Example data
            cell.ExpenseAmount.text = "₹\(indexPath.row * 10)" // Example data
            cell.ProfileImage.image = UIImage(named: "defaultProfile") // Example image
            // Additional configurations...
            
            return cell
        }
        else {
            return UITableViewCell()
        }
    }
}


