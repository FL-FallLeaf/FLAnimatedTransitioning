//
//  FLDismissViewController.m
//  FLAnimatedTransitioning
//
//  Created by Leaf on 2017/10/30.
//  Copyright © 2017年 leaf. All rights reserved.
//

#import "FLDismissViewController.h"
#import "FLTransitioning.h"

@interface FLDismissViewController ()
{
    
}
@property (nonatomic, strong) FLTransitioning *transitioning;

@end

@implementation FLDismissViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.transitioning = [[FLTransitioning alloc] init];
        self.transitioningDelegate = self.transitioning;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
