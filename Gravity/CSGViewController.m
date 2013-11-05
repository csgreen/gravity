//
//  CSGViewController.m
//  Gravity
//
//  Created by Christina Green on 10/31/13.
//  Copyright (c) 2013 Greenster. All rights reserved.
//

#import "CSGViewController.h"

@interface CSGViewController ()

@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, strong) UIGravityBehavior *gravity;

@end

@implementation CSGViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
}
	// Do any additional setup after loading the view, typically from a nib.
//    for (UIView *bubbleView in self.bubbleViews)
//    {
//
//    }
    
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear: animated];
    
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] initWithItems:self.bubbleViews];
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
   
    
    _gravity = [[UIGravityBehavior alloc] initWithItems:self.bubbleViews];
    
    for (UIView *view in self.bubbleViews)
    {
        view.layer.cornerRadius = 5;
        view.layer.masksToBounds = YES;
        [_animator addBehavior:_gravity];
        [_animator addBehavior: collisionBehavior];
    }
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
