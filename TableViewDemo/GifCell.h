//
//  GifCell.h
//  TableViewDemo
//
//  Created by subo on 15/2/1.
//  Copyright (c) 2015年 FengFeiYang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface GifCell : NSTextFieldCell {
    NSImageView *_imageView;
}

@property (strong) NSImage *gifImage;

@end
