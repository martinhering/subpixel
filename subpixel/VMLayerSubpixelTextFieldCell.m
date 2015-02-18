//
//  VMLayerSubpixelTextFieldCell.m
//  subpixel
//
//  Created by Martin Hering on 18.02.15.
//  Copyright (c) 2015 Vemedio. All rights reserved.
//

#import "VMLayerSubpixelTextFieldCell.h"

@implementation VMLayerSubpixelTextFieldCell

- (void) drawWithFrame:(NSRect)cellFrame inView:(NSView *)controlView
{
    NSRect insetRect = NSInsetRect(cellFrame, 2, 0);
    
    NSImage* image = [NSImage imageWithSize:cellFrame.size
                                           flipped:controlView.flipped
                                    drawingHandler:^BOOL(NSRect dstRect) {
                                        [self.backgroundColor set];
                                        NSRectFill(cellFrame);
                                        
                                        [self.attributedStringValue drawWithRect:insetRect options:NSStringDrawingUsesLineFragmentOrigin];
                                        return YES;
                                    }];

    [image drawInRect:cellFrame fromRect:NSZeroRect operation:NSCompositeCopy fraction:1 respectFlipped:YES hints:nil];
}

@end
