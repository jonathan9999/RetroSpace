//
//  MyScene.m
//  RetroSpace
//
//  Created by Nir Boneh on 6/29/14.
//  Copyright (c) 2014 Clouby. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0 green:0 blue:0 alpha:1.0];
        
        _scoreLabel = [[ScoreLabel alloc] initWithFontNamed:@"Chalkduster"];
        _scoreLabel.fontSize = 20;
        [_scoreLabel drawInTopLeft: self.frame]; 
        _scoreLabel.color = [UIColor whiteColor];
        
        _enemyGenerator  = [[EnemyGenerator alloc] init];
        [self addChild:_scoreLabel];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    [_enemyGenerator generateWithScene:self];
    [_scoreLabel incScore:1];
} 

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
