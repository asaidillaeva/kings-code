import UIKit

public extension UIView {
    
    @resultBuilder
    struct ConstraintsBuilder {
        static func buildBlock(_ components: NSLayoutConstraint...) -> [NSLayoutConstraint] {
            components
        }
    }
    
    @discardableResult
    func createConstraints(@ConstraintsBuilder constraints: (() -> [NSLayoutConstraint])) -> [NSLayoutConstraint] {
        constraints()
    }
}
