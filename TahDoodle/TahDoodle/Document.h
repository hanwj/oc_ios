//
//  Document.h
//  TahDoodle
//
//  Created by meibo-design on 8/7/15.
//  Copyright (c) 2015年 caixiaoxiao. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument <NSTableViewDataSource>
{
    IBOutlet NSTableView *itemTableView;
    NSMutableArray *todoItems;
}

-(IBAction)createNewItem:(id)sender;

@end

