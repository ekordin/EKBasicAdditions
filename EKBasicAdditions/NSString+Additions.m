//
//  NSString+Additions.m
//  EKBasicAdditions
//
//  Created by Eugene Kordin on 2/21/17.
//  Copyright © 2017 Eugene Kordin. All rights reserved.
//

#import "NSString+Additions.h"

@implementation NSString (Additions)

#pragma mark - Ellipsis

+ (NSString*)ellipsis
{
    return [NSString stringWithUTF8String: "\xE2\x80\xA6"];
}

- (NSString*)stringByAppendingEllipsis
{
    return [self stringByAppendingString:[NSString ellipsis]];
}

#pragma mark - Generating a UUID

+ (NSString*)stringWithUUID
{
    CFUUIDRef uuid = CFUUIDCreate(NULL);
    if (uuid)
    {
        CFStringRef string = CFUUIDCreateString(NULL, uuid);
        CFRelease(uuid);
        return (__bridge_transfer NSString *)string;
    }
    
    return nil;
}


@end
