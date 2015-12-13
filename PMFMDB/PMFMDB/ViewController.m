//
//  ViewController.m
//  PMFMDB
//
//  Created by wsy on 15/12/1.
//  Copyright © 2015年 WSY. All rights reserved.
//

#import "ViewController.h"
#import "PMMainViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"Please click view!";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    PMMainViewController *mainViewController = [[PMMainViewController alloc] init];
    // You must assign you DB path to the PMMainViewController
    mainViewController.dataPath = [self messageDBPath];
    [self.navigationController pushViewController:mainViewController animated:YES];
}

// The DB path
- (NSString *)messageDBPath
{
    return [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]
            stringByAppendingPathComponent:@"message.db"];
}


@end
