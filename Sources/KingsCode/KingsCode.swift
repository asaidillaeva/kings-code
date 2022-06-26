import UIKit

open extension UIView {
    
    @resultBuilder
    open struct ConstraintsBuilder {
        static func buildBlock(_ components: NSLayoutConstraint...) -> [NSLayoutConstraint] {
            components
        }
    }
    
    @discardableResult
    open func createConstraints(@ConstraintsBuilder constraints: (() -> [NSLayoutConstraint])) -> [NSLayoutConstraint] {
        constraints()
    }
}
