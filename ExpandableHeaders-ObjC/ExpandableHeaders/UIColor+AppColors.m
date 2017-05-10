//
//  UIColor+AppColors.m
// LifeWorks
//
//  Created by James Johnson on 06/01/2016.
//  Copyright © 2016 Anexinet. All rights reserved.
//

#import "UIColor+AppColors.h"

@implementation UIColor (appColors)
// custom color methods
+ (UIColor *)colorWithHexString:(NSString *)str {
    if (str == nil) {
        return [UIColor colorWithHex:(int)0xFF5300];
    } else {
        const char *cStr = [str cStringUsingEncoding:NSASCIIStringEncoding];
        long x = strtol(cStr + 1, NULL, 16);
        
        return [UIColor colorWithHex:(int)x];
    }
}

+ (UIColor *)colorWithHex:(int)hex {
    
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = hex & 0xFF;
    
    return [UIColor colorWithRed:(float)r / 255.0f
                           green:(float)g / 255.0f
                            blue:(float)b / 255.0f
                           alpha:1.0f];
}

+ (void)changeImageColor:(UIImageView *)theImageView toColor:(UIColor *)newColor {
    theImageView.image = [theImageView.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    theImageView.tintColor = newColor;
}

@end
