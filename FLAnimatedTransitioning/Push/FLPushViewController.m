//
//  FLPushViewController.m
//  FLAnimatedTransitioning
//
//  Created by Leaf on 2017/10/30.
//  Copyright © 2017年 leaf. All rights reserved.
//

#import "FLPushViewController.h"

@interface FLPushViewController ()

@property (weak, nonatomic) IBOutlet UIButton *image;

@end

@implementation FLPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIImageView *)imageView {
    return self.image.imageView;
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
