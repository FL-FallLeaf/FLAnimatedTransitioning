//
//  FLNavigationAnimatedTransitioning.m
//  FLAnimatedTransitioning
//
//  Created by Leaf on 2017/10/30.
//  Copyright © 2017年 leaf. All rights reserved.
//

#import "FLNavigationAnimatedTransitioning.h"
#import "FLPushViewController.h"
#import "FLPopViewController.h"

@implementation FLNavigationAnimatedTransitioning

#pragma mark - UIViewControllerAnimatedTransitioning

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    
    UIView *containerView = transitionContext.containerView;
    FLPushViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    FLPopViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *transitionView = [[UIImageView alloc] initWithImage:fromVC.imageView.image];
    transitionView.frame = [fromVC.imageView convertRect:fromVC.imageView.bounds toView:containerView];
    fromVC.imageView.hidden = YES;
    toVC.imageView.hidden = YES;
    toVC.view.alpha = 0;
    
    [containerView addSubview:toVC.view];
    [containerView addSubview:transitionView];
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] delay:0.f usingSpringWithDamping:0.5 initialSpringVelocity:2 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        transitionView.frame = [toVC.imageView convertRect:toVC.imageView.bounds toView:containerView];
        toVC.view.alpha = 1;
    } completion:^(BOOL finished) {
        
        [transitionView removeFromSuperview];
        toVC.imageView.hidden = NO;
        [transitionContext completeTransition:!transitionContext.transitionWasCancelled];
    }];
}

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.75;
}

- (void)animationEnded:(BOOL) transitionCompleted {
    
}

@end
