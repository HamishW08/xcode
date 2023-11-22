import UIKit

class LoadingViewController: UIViewController {

    @IBOutlet weak var loadingLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Start your loading logic here
        DispatchQueue.global().async {
            // Simulate a delay (replace with your actual loading code)
            Thread.sleep(forTimeInterval: 2.0)
            
            // Update UI on the main thread
            DispatchQueue.main.async {
                self.loadingLabel.text = "Loading complete!"
                
                // You can transition to the main content of your app here
            }
        }
    }
    @IBAction func wordbuttonpress(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.office.com/launch/word"  )! as URL, options: [:], completionHandler: nil)
    }
}
