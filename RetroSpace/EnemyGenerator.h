//
//  EnemyGenerator.h
//  RetroSpace
//
//  Created by Nir Boneh on 6/29/14.
//  Copyright (c) 2014 Clouby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>
#import "WorldObject.h"

@interface EnemyGenerator : NSObject

@property NSMutableArray *enemies;
@property SKScene *gameScene;
@property float generateTime;
@property float generateTicCounter;

-(id) initWithScene:(SKScene *)gameScene;
-(void)update:(CFTimeInterval)deltaTime;
-(void) hitBy: (SKSpriteNode *) obj;

@end
