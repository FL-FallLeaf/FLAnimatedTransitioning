//
//  FLModalAnimatedTransitioning.m
//  FLAnimatedTransitioning
//
//  Created by Leaf on 2017/10/30.
//  Copyright © 2017年 leaf. All rights reserved.
//

#import "FLModalAnimatedTransitioning.h"
#import "UIView+FL.h"

@interface FLModalAnimatedTransitioning ()
{
    
}
@property (nonatomic, assign) FLModalType type;

@end

@implementation FLModalAnimatedTransitioning

#pragma mark - UIViewControllerAnimatedTransitioning

- (instancetype)initWithModalType:(FLModalType)type
{
    self = [super init];
    if (self) {
        self.type = type;
    }
    return self;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    switch (self.type) {
        case FLModalTypePresent:
            [self presentTransition:transitionContext];
            break;
            
        case FLModalTypeDismiss:
            [self dismissTransition:transitionContext];
            break;
    }
}

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.75;
}

- (void)animationEnded:(BOOL) transitionCompleted {
    
}

- (void)presentTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    UIView *containerView = [transitionContext containerView];
    
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIView *transitionView = [fromVC.view snapshotViewAfterScreenUpdates:NO];
    transitionView.frame = fromVC.view.frame;
    fromVC.view.hidden = YES;
    [containerView addSubview:transitionView];
    [containerView addSubview:toVC.view];
    
    toVC.view.frame = CGRectMake(0, containerView.height, containerView.width, 400);
    [UIView animateWithDuration:[self transitionDuration:transitionContext] delay:0.f usingSpringWithDamping:0.5 initialSpringVelocity:2 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        transitionView.transform = CGAffineTransformMakeScale(0.85, 0.85);
        toVC.view.transform = CGAffineTransformMakeTranslation(0, -400);
    } completion:^(BOOL finished) {
        
        [transitionContext completeTransition:!transitionContext.transitionWasCancelled];
    }];
}

- (void)dismissTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    UIView *containerView = [transitionContext containerView];
    
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];

    UIView *transitionView = containerView.subviews[containerView.subviews.count - fromVC.view.subviews.count-1];
    
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] delay:0.f usingSpringWithDamping:0.5 initialSpringVelocity:2 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        transitionView.transform = CGAffineTransformIdentity;
        fromVC.view.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        [transitionView removeFromSuperview];
        toVC.view.hidden = NO;
        [transitionContext completeTransition:!transitionContext.transitionWasCancelled];
    }];
}

@end
