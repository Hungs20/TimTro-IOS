
import Foundation
import UIKit

class BaseCustomView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViewWithNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initViewWithNib()
    }
    
    private func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "\(type(of:self))", bundle: bundle)
        return nib.instantiate(
            withOwner: self,
            options: nil).first as? UIView
    }
    
     func initViewWithNib() {
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
        view.autoresizingMask =
            [.flexibleWidth, .flexibleHeight]
        view.tag = 999
        addSubview(view)
    }
    
    
}
