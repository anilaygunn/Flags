import UIKit

class ViewController: UITableViewController {
    
    public var websites  = ["apple.com","hackingwithswift.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sites"
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Site", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.url = URL(string: "https://" + websites[indexPath.row])
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}

