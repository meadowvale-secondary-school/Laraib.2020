import UIKit
extension UITableViewCell {
    static let reuseIdentifier = "reuseIdentifier"
}
class ViewController: UITableViewController {
    var currentColor = 0
    let colors: [UIColor] = [#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.reuseIdentifier, for: indexPath)
        cell.contentView.backgroundColor = colors[currentColor]
        cell.textLabel?.text = "Cell #\(indexPath.row)"
        cell.detailTextLabel?.text = "Detail #\(indexPath.row)"
        currentColor = (currentColor + 1) % colors.count
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}
