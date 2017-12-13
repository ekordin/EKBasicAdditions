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

@end
