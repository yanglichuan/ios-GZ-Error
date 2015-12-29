//
//  ViewController.swift
//  mytablevv2
//
//  Created by  yanglc on 15/12/29.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,GroupClickDelegate {
    
    
    
    func GroupClick(index: Int) {
        openIndex = index;
        
        print("2222")
        
        var bb = NSIndexSet(index: 1)
//        tableview.reloadSections(bb, withRowAnimation: .None);
        
    tableview.reloadSections(bb, withRowAnimation: .Fade)
        
        
      //  tableview.reloadData();
        
        
        
    }

    @IBOutlet weak var tableview: UITableView!
    
    
    
    
    var mydata:NSMutableDictionary?
    var mykeys:NSMutableArray?
    
    var openIndex:Int = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mykeys = NSMutableArray();
        
        mydata = NSMutableDictionary();
        
        
    
        
        
        var v1 = NSMutableArray()
        v1.addObject("pengyou1")
        v1.addObject("pengyou2")
        v1.addObject("pengyou3")
        v1.addObject("pengyou4")
        v1.addObject("pengyou1")
        v1.addObject("pengyou2")
        v1.addObject("pengyou3")
        v1.addObject("pengyou4")
        v1.addObject("pengyou1")
        v1.addObject("pengyou2")
        v1.addObject("pengyou3")
        v1.addObject("pengyou4")
        v1.addObject("pengyou1")
        v1.addObject("pengyou2")
        v1.addObject("pengyou3")
        v1.addObject("pengyou4")
        v1.addObject("pengyou1")
        v1.addObject("pengyou2")
        v1.addObject("pengyou3")
        v1.addObject("pengyou4")
        var v2 = NSMutableArray()
        v2.addObject("qinqi1")
        v2.addObject("qinqi2")
        v2.addObject("qinqi3")
        v2.addObject("qinqi4")
        v2.addObject("qinqi1")
        v2.addObject("qinqi2")
        v2.addObject("qinqi3")
        v2.addObject("qinqi4")
        v2.addObject("qinqi1")
        v2.addObject("qinqi2")
        v2.addObject("qinqi3")
        v2.addObject("qinqi4")
        v2.addObject("qinqi1")
        v2.addObject("qinqi2")
        v2.addObject("qinqi3")
        v2.addObject("qinqi4")
        v2.addObject("qinqi1")
        v2.addObject("qinqi2")
        v2.addObject("qinqi3")
        v2.addObject("qinqi4")
        
        var v3 = NSMutableArray()
        v3.addObject("laoshi1")
        v3.addObject("laoshi2")
        v3.addObject("laoshi3")
        v3.addObject("laoshi4")
        v3.addObject("laoshi1")
        v3.addObject("laoshi2")
        v3.addObject("laoshi3")
        v3.addObject("laoshi4")

        
        v3.addObject("laoshi1")
        v3.addObject("laoshi2")
        v3.addObject("laoshi3")
        v3.addObject("laoshi4")

        v3.addObject("laoshi1")
        v3.addObject("laoshi2")
        v3.addObject("laoshi3")
        v3.addObject("laoshi4")

        v3.addObject("laoshi1")
        v3.addObject("laoshi2")
        v3.addObject("laoshi3")
        v3.addObject("laoshi4")

        v3.addObject("laoshi1")
        v3.addObject("laoshi2")
        v3.addObject("laoshi3")
        v3.addObject("laoshi4")

        v3.addObject("laoshi1")
        v3.addObject("laoshi2")
        v3.addObject("laoshi3")
        v3.addObject("laoshi4")

        
        
        

        mykeys?.addObject("我的朋友")
        mykeys?.addObject("我的亲戚")
        mykeys?.addObject("我的老师")
        
        mydata?.setValue(v1, forKey: "我的朋友")
        mydata?.setValue(v2, forKey: "我的亲戚")
        mydata?.setValue(v3, forKey: "我的老师")
        
        
        
        tableview.delegate = self;
        tableview.dataSource = self;
        
        //3 设置组头的高度
        tableview.sectionHeaderHeight = 44;
        
    
    
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        var keys = mydata?.allKeys;
        return (keys?.count)!;
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
      
        if(openIndex == section){
            
            var keys = mykeys;
            var keystr = keys![section];
            
            var vvs = mydata?.objectForKey(keystr) as! NSArray;
            
            return vvs.count;
        }else{
            return 0;
        }
        
       
    }
    
  
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var keys = mykeys;
        var keystr = keys![indexPath.section];
        
        var vvs = mydata?.objectForKey(keystr) as! NSArray;
        
        
        
        var cell = tableview.dequeueReusableCellWithIdentifier("bbb")
        if(cell == nil){
            cell = UITableViewCell(style: .Default, reuseIdentifier: "bbb")
            
        }
        cell?.textLabel?.text = vvs[indexPath.row] as! String
        
        
        
        return cell!;
        
        
    }
    
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if(section  == 0){
            return ""
        }else{
            return ""
        }
    
    }
 
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    
        var headv = tableview.dequeueReusableHeaderFooterViewWithIdentifier("ccc") as? MyHeaderView
        if(headv == nil){
            headv = MyHeaderView(reuseIdentifier: "ccc");
            
        }
        
        headv?.dele = self;
        
        headv?.tag = section;
     
        if(section == 0){
            headv!.settitle("group1")
            
        }else{
            headv!.settitle("group2")

        }
       
        
        
        
        
        
        
        
        
        
        return headv!;
    }
    
    
    
    
    
    
    


}

