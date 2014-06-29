//
//  LoadingViewController.m
//  RetroSpace
//
//  Created by Nir Boneh on 6/29/14.
//  Copyright (c) 2014 Clouby. All rights reserved.
//

#import "LoadingViewController.h"

@interface LoadingViewController ()

@end

@implementation LoadingViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //[NSThread sleepForTimeInterval:2.0f];
    [self performSegueWithIdentifier:@"loadToMain" sender:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
