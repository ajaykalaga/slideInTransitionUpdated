

import UIKit

enum MenuType: Int {
    case home
    case MyProfile
    case MyOrders
    case AboutUs
    case privacyPolicy
    case ContactUs
    case SetPassword
    case Login
    case logout
    
    }


class MenuViewController: UITableViewController {

    var didTapMenuType: ((MenuType) -> Void)?
  
    override func viewDidLoad() {
        super.viewDidLoad()

         
         
       
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func homeTapped(_ sender: UIButton) {
           performSegue(withIdentifier: "goToHome", sender: nil)
    }
    @IBAction func profileTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToProfile", sender: nil)
    }
    
    @IBAction func myOrdersTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToOrders", sender: nil)
    }
    
    @IBAction func aboutUsTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToAboutUs", sender: nil)
    }
    
    @IBAction func privacyPolicyTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToPrivacyPolicy", sender: nil)
    }
    
    @IBAction func contactUsTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToContactUs", sender: nil)
    }
    
    @IBAction func setPasswordTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSetPassword", sender: nil)
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToLogin", sender: nil)
    }
    
    @IBAction func logOutTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToLogOut", sender: nil)
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else { return }
        dismiss(animated: true) { [weak self] in
            print("Dismissing: \(menuType)")
            self?.didTapMenuType?(menuType)
          
        }
    }
    
    
}
