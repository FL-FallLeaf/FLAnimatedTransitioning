//
//  FLTabAnimatedTransitioning.m
//  FLAnimatedTransitioning
//
//  Created by Leaf on 2017/10/30.
//  Copyright © 2017年 leaf. All rights reserved.
//

#import "FLTabAnimatedTransitioning.h"

@implementation FLTabAnimatedTransitioning

#pragma mark - UIViewControllerAnimatedTransitioning

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    UIView *containerView = transitionContext.containerView;
    UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
    UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
    
    [containerView addSubview:toView];
    toView.transform = CGAffineTransformMakeTranslation(toView.frame.size.width, 0);
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        fromView.transform = CGAffineTransformMakeTranslation(-fromView.frame.size.width, 0);
        toView.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        fromView.transform = CGAffineTransformIdentity;
        toView.transform = CGAffineTransformIdentity;
        [transitionContext completeTransition:!transitionContext.transitionWasCancelled];
    }];
}

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.5;
}

- (void)animationEnded:(BOOL) transitionCompleted {
    
}

@end
