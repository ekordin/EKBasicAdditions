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

+ (NSString *)applicationVersion
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}

- (NSString *)applicationVersion
{
    return [[self class] applicationVersion];
}

+ (NSString *)applicationIdentifier
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
}

- (NSString *)applicationIdentifier
{
    return [[self class] applicationIdentifier];
}

+ (NSString *)applicationName
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleExecutable"];
}

- (NSString *)applicationName
{
    return [[self class] applicationName];
}

+ (NSObject<NSApplicationDelegate>*)applicationDelegate
{
    return [NSApplication sharedApplication].delegate;
}

- (void)beginSheet:(NSWindow*)sheet modalForWindow:(NSWindow*)modalWindow didEndBlock:(void (^)(NSInteger returnCode))block
{
    [self beginSheet:sheet
      modalForWindow:modalWindow
       modalDelegate:self
      didEndSelector:@selector(sheet_blockSheetDidEnd:returnCode:contextInfo:)
         contextInfo:(__bridge void * _Null_unspecified)(block)];
}

- (void)sheet_blockSheetDidEnd:(NSWindow*)__unused sheet returnCode:(NSInteger)returnCode contextInfo:(void *)contextInfo
{
    void (^block)(NSInteger returnCode) = (__bridge void (^)(NSInteger))(contextInfo);
    block(returnCode);
    block = nil;
}

@end
