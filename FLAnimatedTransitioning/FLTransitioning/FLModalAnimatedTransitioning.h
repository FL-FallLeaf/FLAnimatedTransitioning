//
//  FLModalAnimatedTransitioning.h
//  FLAnimatedTransitioning
//
//  Created by Leaf on 2017/10/30.
//  Copyright © 2017年 leaf. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, FLModalType) {
    FLModalTypePresent = 0,
    FLModalTypeDismiss,
};

@interface FLModalAnimatedTransitioning : NSObject <UIViewControllerAnimatedTransitioning>

- (instancetype)initWithModalType:(FLModalType)type;

@end
