//
//  FLTransitioning.m
//  FLAnimatedTransitioning
//
//  Created by Leaf on 2017/10/30.
//  Copyright © 2017年 leaf. All rights reserved.
//

#import "FLTransitioning.h"
#import "FLTabAnimatedTransitioning.h"
#import "FLNavigationAnimatedTransitioning.h"
#import "FLModalAnimatedTransitioning.h"

@implementation FLTransitioning

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    
    return [[FLModalAnimatedTransitioning alloc] initWithModalType:FLModalTypePresent];
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    
    return [[FLModalAnimatedTransitioning alloc] initWithModalType:FLModalTypeDismiss];
}

- (nullable id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                            animationControllerForOperation:(UINavigationControllerOperation)operation
                                                         fromViewController:(UIViewController *)fromVC
                                                           toViewController:(UIViewController *)toVC {
    
    return [[FLNavigationAnimatedTransitioning alloc] init];
}

- (nullable id <UIViewControllerAnimatedTransitioning>)tabBarController:(UITabBarController *)tabBarController
                     animationControllerForTransitionFromViewController:(UIViewController *)fromVC
                                                       toViewController:(UIViewController *)toVC {
    
    return [[FLTabAnimatedTransitioning alloc] init];
}

@end
