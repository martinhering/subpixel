//
//  AppDelegate.m
//  subpixel
//
//  Created by Martin Hering on 18.02.15.
//  Copyright (c) 2015 Vemedio. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSButton* layerButton;
@end

@implementation AppDelegate

- (void) awakeFromNib {
    NSButtonCell* cell = self.layerButton.cell;
    cell.backgroundColor = [NSColor whiteColor];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
