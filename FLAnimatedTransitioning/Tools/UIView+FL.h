//
//  UIView+FL.h
//  BOSS
//
//  Created by Leaf on 16/9/13.
//  Copyright © 2016年 leaf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FL)

@end

@interface UIView (Frame)

@property (nonatomic,assign) CGFloat x;
@property (nonatomic,assign) CGFloat y;

@property (nonatomic,assign) CGFloat centerX;
@property (nonatomic,assign) CGFloat centerY;

@property (nonatomic,assign) CGFloat top;
@property (nonatomic,assign) CGFloat left;
@property (nonatomic,assign) CGFloat bottom;
@property (nonatomic,assign) CGFloat right;

@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat height;
@property (nonatomic,assign) CGPoint origin;
@property (nonatomic,assign) CGSize size;

@end
