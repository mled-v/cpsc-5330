import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var stateNameLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    @IBOutlet weak var populationLabel: UILabel!
    @IBOutlet weak var yearAdmittedLabel: UILabel!
    
    var state: State?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let state = state {
            self.title = state.name
            stateNameLabel.text = state.name
            capitalLabel.text = "Capital: \(state.capital)"
            populationLabel.text = "Population: \(state.population)"
            yearAdmittedLabel.text = "Admitted: \(state.yearAdmitted)"
        }
    }
}
