//
//  NSString+Additions.h
//  EKBasicAdditions
//
//  Created by Eugene Kordin on 2/21/17.
//  Copyright © 2017 Eugene Kordin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Additions)

+ (NSString*)ellipsis;
- (NSString*)stringByAppendingEllipsis;

+ (NSString*)stringWithUUID;

@end
