//
//  AppDelegate.h
//  TableViewDemo
//
//  Created by subo on 15/2/1.
//  Copyright (c) 2015年 FengFeiYang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet   NSImageView *_imageView;
    IBOutlet   NSTableView *_tableView;
    NSArray    *_images;
}


@end

