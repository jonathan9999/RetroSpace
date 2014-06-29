//
//  EnemyGenerator.m
//  RetroSpace
//
//  Created by Nir Boneh on 6/29/14.
//  Copyright (c) 2014 Clouby. All rights reserved.
//

#import "EnemyGenerator.h"
#import "WorldObject.h"


@implementation EnemyGenerator

-(id) init{
    self = [super init];
    if(self){
        _enemyList = [[NSMutableArray alloc] initWithCapacity:BUFFER_SIZE];
    }
    return self;
}

-(void) generateWithScene:(SKScene *) game {
    WorldObject *enemy =[[WorldObject alloc] initWithImageNamed:@"Earth.png"];
    [enemy runAction:[SKAction moveTo:CGPointMake(480,120)duration:8.0f]];
    [game addChild:enemy];
    [_enemyList addObject:enemy];
}
-(void) hitBy: (SKSpriteNode *) obj{
    
}
@end
