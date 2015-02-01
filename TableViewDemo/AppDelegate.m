//
//  AppDelegate.m
//  TableViewDemo
//
//  Created by subo on 15/2/1.
//  Copyright (c) 2015年 FengFeiYang. All rights reserved.
//

#import "AppDelegate.h"
#import "GifCell.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSImage *img = [NSImage imageNamed:@"songListWave.gif"]; // or similar
    [self.window.contentView setWantsLayer:YES];
    _imageView.imageScaling = NSImageScaleNone;
    _imageView.animates = YES;
    _imageView.image = img;
    _imageView.canDrawSubviewsIntoLayer = YES;
    [_imageView setImage:img];
    
    _images = [[NSArray alloc] initWithObjects:img, nil] ;
    [_tableView reloadData];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return [_images count];
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {

    return nil;
}

- (void)tableView:(NSTableView *)tableView willDisplayCell:(id)cell forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    if ([tableColumn.identifier isEqualToString:@"image"]) {
        GifCell *imageCell = (GifCell *)cell;
        [imageCell setGifImage:[_images objectAtIndex:row]];
    }
}

@end
