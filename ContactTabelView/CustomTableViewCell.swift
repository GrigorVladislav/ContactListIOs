//
//  CustomTableViewCell.swift
//  ContactTabelView
//
//  Created by student on 4/24/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    lazy var backView: UIView = {
       
        let view = UIView(frame: CGRect(x: 10, y: 6, width: self.frame.width - 20, height: 110))
        view.backgroundColor = UIColor.darkGray
        return view
    }()
    
    lazy var userImage: UIImageView = {
        let userImage = UIImageView(frame: CGRect(x: 4, y: 4, width: 104, height: 104))
        userImage.contentMode = .scaleAspectFit
        return userImage
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 116, y: 8, width: backView.frame.width - 116, height: 30))
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    lazy var phoneLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 116, y: 42, width: backView.frame.width - 116, height: 30))
        label.textAlignment = .left
        return label
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func layoutSubviews() {
        contentView.backgroundColor = UIColor.clear
        backgroundColor = UIColor.clear
        backView.layer.cornerRadius = 5
        backView.clipsToBounds = true
        userImage.layer.cornerRadius = 52
        userImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        addSubview(backView)
        backView.addSubview(userImage)
        backView.addSubview(nameLabel)
        backView.addSubview(phoneLabel)
        
    }

}
