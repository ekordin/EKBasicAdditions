//
//  NSApplication+Additions.h
//  EKBasicAdditions
//
//  Created by Eugene Kordin on 12/13/16.
//  Copyright © 2016 Eugene Kordin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Appkit/Appkit.h>

@interface NSApplication (Additions)

+ (BOOL)systemVersionIsGreaterThanOrEqualTo:(NSUInteger)version;
- (BOOL)systemVersionIsGreaterThanOrEqualTo:(NSUInteger)version;

+ (BOOL)systemVersionIsLessThan:(NSUInteger)version;
- (BOOL)systemVersionIsLessThan:(NSUInteger)version;

+ (NSString*)applicationVersion;
- (NSString*)applicationVersion;

+ (NSString*)applicationIdentifier;
- (NSString*)applicationIdentifier;

+ (NSString*)applicationName;
- (NSString*)applicationName;

+ (NSObject<NSApplicationDelegate>*)applicationDelegate;

- (void)beginSheet:(NSWindow*)sheet modalForWindow:(NSWindow*)modalWindow didEndBlock:(void (^)(NSInteger returnCode))block;

@end
