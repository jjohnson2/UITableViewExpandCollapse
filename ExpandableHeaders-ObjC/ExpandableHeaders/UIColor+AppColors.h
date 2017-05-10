//
//  UIColor+AppColors.h
// LifeWorks
//
//  Created by James Johnson on 06/01/2016.
//  Copyright © 2016 Anexinet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (appColors)
// custom color methods
+ (UIColor *)colorWithHexString:(NSString *)str;    // takes @"#123456"
+ (UIColor *)colorWithHex:(int)col;                 // takes 0x67b565
+ (void)changeImageColor:(UIImageView *)theImageView toColor:(UIColor *)newColor;

@end
