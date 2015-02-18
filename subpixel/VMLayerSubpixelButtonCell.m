//
//  VMLayerSubpixelButtonCell.m
//  subpixel
//
//  Created by Martin Hering on 18.02.15.
//  Copyright (c) 2015 Vemedio. All rights reserved.
//

#import "VMLayerSubpixelButtonCell.h"

@implementation VMLayerSubpixelButtonCell

- (NSRect)drawTitle:(NSAttributedString *)title withFrame:(NSRect)frame inView:(NSView *)controlView
{
    NSRect rect = [super drawTitle:title withFrame:frame inView:controlView];
    
    NSImage* image = [NSImage imageWithSize:rect.size flipped:controlView.flipped drawingHandler:^BOOL(NSRect dstRect) {
        [self.backgroundColor set];
        NSRectFill(dstRect);
        
        [self.attributedTitle drawWithRect:dstRect options:NSStringDrawingUsesLineFragmentOrigin];
        return YES;
    }];
    
    [image drawInRect:rect fromRect:NSZeroRect operation:NSCompositeCopy fraction:1 respectFlipped:YES hints:nil];
    return rect;
}
@end
