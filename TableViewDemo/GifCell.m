//
//  GifCell.m
//  TableViewDemo
//
//  Created by subo on 15/2/1.
//  Copyright (c) 2015年 FengFeiYang. All rights reserved.
//

#import "GifCell.h"

@implementation GifCell

- (void)drawInteriorWithFrame:(NSRect)cellFrame inView:(NSView *)controlView {
    if (self.gifImage) {
        if (!_imageView) {
            _imageView = [[NSImageView alloc] initWithFrame:NSMakeRect(0, 0, self.gifImage.size.width, self.gifImage.size.height)];
        }
        
        if (_imageView.superview) {
            [_imageView removeFromSuperview];
        }
        
        _imageView.imageScaling = NSImageScaleNone;
        _imageView.animates = YES;
        _imageView.image = self.gifImage;
        _imageView.canDrawSubviewsIntoLayer = YES;
        controlView.wantsLayer = YES;
        [controlView addSubview:_imageView];
    }
}

@end
