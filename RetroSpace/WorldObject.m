//
//  Asteroid.m
//  RetroSpace
//
//  Created by Nir Boneh on 6/29/14.
//  Copyright (c) 2014 Clouby. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "WorldObject.h"

@implementation WorldObject

-(BOOL) hitBy: (SKSpriteNode *) obj{
    if([self intersectsNode:obj]) {
        [self destroy];
        return YES;
    }
    return NO;
}

-(void) destroy{
[self runAction:[SKAction fadeAlphaTo:0.0f
                             duration:.5f]];
}

@end
