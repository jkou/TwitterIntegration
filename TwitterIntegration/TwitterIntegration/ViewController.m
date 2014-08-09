//
//  ViewController.m
//  TwitterIntegration
//
//  Created by Juan Kou on 8/6/14.
//  Copyright (c) 2014 JUANKOU. All rights reserved.
//

#import "ViewController.h"
#import "TwitterManager.h"


@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *twitterB = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 200)];
    twitterB.backgroundColor = [UIColor blueColor];
    [twitterB addTarget:self action:@selector(postToTwitter) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:twitterB];
    
    TwitterManager *tm = [[TwitterManager alloc] init];
    [tm signin:self];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
