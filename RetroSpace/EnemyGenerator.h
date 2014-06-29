//
//  EnemyGenerator.h
//  RetroSpace
//
//  Created by Nir Boneh on 6/29/14.
//  Copyright (c) 2014 Clouby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>
#define BUFFER_SIZE 10

@interface EnemyGenerator : NSObject

@property NSMutableArray *enemyList;

-(void) generateWithScene:(SKScene *) game ;
-(void) hitBy: (SKSpriteNode *) obj;

@end
