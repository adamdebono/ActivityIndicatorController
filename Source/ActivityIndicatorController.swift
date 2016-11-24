
import SwiftConstraints
import UIKit

public class ActivityIndicatorController: UIAlertController {
    
    override public var preferredStyle: UIAlertControllerStyle {
        return .alert
    }
    
    public init(title: String = "") {
        super.init(nibName: nil, bundle: nil)
        
        self.title = title
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        activityIndicator.color = .black
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.startAnimating()
        
        if let subView = self.view.subviews.first {
            if let constraint = subView.constraints.first(where: {
                $0.firstItem as? UIView == subView &&
                $0.secondItem == nil &&
                $0.firstAttribute == .width &&
                $0.secondAttribute == .notAnAttribute &&
                $0.relation == .equal
            }) {
                constraint.isActive = false
            }
        }
        
        self.view.addSubview(activityIndicator)
        
        self.view.addConstraint(toItem: activityIndicator, attribute: .centerX, constant: 1)
        self.view.addConstraint(toItem: activityIndicator, attribute: .centerY, constant: 1)
        self.view.addConstraint(toSelf: .height, constant: 80)
        self.view.addConstraint(toSelf: .width, constant: 80)
    }
}
