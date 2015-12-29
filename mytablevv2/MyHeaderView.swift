

//
//  MyHeaderView.swift
//  mytablevv2
//
//  Created by  yanglc on 15/12/29.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit



protocol GroupClickDelegate{
    
    func GroupClick(index:Int);
    
    
}

class MyHeaderView: UITableViewHeaderFooterView {
    
    
    
    var dele:GroupClickDelegate?
    
    var titleLabel:UIButton!
    
    
    
  override  init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier);
    
    
    titleLabel = UIButton(type:.Custom)
    titleLabel.userInteractionEnabled  = true;
    titleLabel.frame = CGRect(x: 0, y: 0, width: 200, height: 44)
    titleLabel.backgroundColor = UIColor.blueColor()
    titleLabel.addTarget(self, action: "cccc", forControlEvents: .TouchUpInside);
    

    
    
    
   
     self.contentView.addSubview(titleLabel)
    
     titleLabel.titleLabel?.textAlignment = .Left

    }
    
    
   
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func settitle(s:String){
        titleLabel.setTitle(s, forState: .Normal) ;
        titleLabel.setTitle("hhhhh", forState: .Highlighted)
    }
    
    func cccc(){
    
        if(dele != nil){
             print("1111")
            dele?.GroupClick(self.tag)
        }
        
         print("000")
        
        
    }
    
    
    
    

    
    
    
    
    
    
    

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
