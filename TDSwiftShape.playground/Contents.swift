import UIKit
import PlaygroundSupport

// View controller that hosts the target view
class TDLiveViewController : UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Config background view
        let backgroundView = UIView()
        backgroundView.backgroundColor = .lightGray
        
        // Solid circle
        TDSwiftShape.drawCircle(onView: backgroundView, atCenter: CGPoint(x: 200.0, y: 200.0), redius: 30, lineWidth: 5, fillColor: UIColor.cyan.cgColor, strokeColor: UIColor.brown.cgColor)
        
        // Circle
        TDSwiftShape.drawCircle(onView: backgroundView, atCenter: CGPoint(x: 300.0, y: 350.0), redius: 80, lineWidth: 3, fillColor: UIColor.clear.cgColor, strokeColor: UIColor.red.cgColor)
        
        // Dashed Line
        TDSwiftShape.drawDashedLine(onView: backgroundView, fromPoint: CGPoint(x: 29.9, y: 218.0), toPoint: CGPoint(x: 302.0, y: 92.0), lineWidth: 3, dashLength: 3, dashGap: 4, lineColor: UIColor.white.cgColor)
        
        // Present background view
        self.view = backgroundView
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = TDLiveViewController()
