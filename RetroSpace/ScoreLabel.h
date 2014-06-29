//
//  ScoreLabel.h
//  RetroSpace
//
//  Created by Nir Boneh on 6/29/14.
//  Copyright (c) 2014 Clouby. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface ScoreLabel : SKLabelNode

@property int score;

-(void) incScore:(int) inc;

@end
