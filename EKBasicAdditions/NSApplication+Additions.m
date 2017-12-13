//
//  NSApplication+Additions.m
//  EKBasicAdditions
//
//  Created by Eugene Kordin on 12/13/16.
//  Copyright © 2016 Eugene Kordin. All rights reserved.
//

#import "NSApplication+Additions.h"

@implementation NSApplication (Additions)

+ (BOOL)systemVersionIsGreaterThanOrEqualTo:(NSUInteger)version
{
    return (floor(NSAppKitVersionNumber) >= version);
}

+ (BOOL)systemVersionIsLessThan:(NSUInteger)version
{
    return (floor(NSAppKitVersionNumber) < version);
}

- (BOOL)systemVersionIsGreaterThanOrEqualTo:(NSUInteger)version
{
    return [[self class] systemVersionIsGreaterThanOrEqualTo:version];
}

- (BOOL)systemVersionIsLessThan:(NSUInteger)version
{
    return [[self class] systemVersionIsLessThan:version];
}

@end
