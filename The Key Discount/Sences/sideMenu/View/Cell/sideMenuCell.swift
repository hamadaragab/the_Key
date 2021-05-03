//
//  sideMenuCell.swift
//  The Key Discount
//
//  Created by Apple on 4/28/21.
//

import UIKit

class sideMenuCell: UITableViewCell {

    @IBOutlet weak var expandingIcon: UIImageView!
    @IBOutlet weak var titleLBL: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var containerView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    private func setUpView()
    {
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
