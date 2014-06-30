//
//  EnemyGenerator.m
//  RetroSpace
//
//  Created by Nir Boneh on 6/29/14.
//  Copyright (c) 2014 Clouby. All rights reserved.
//

#import "EnemyGenerator.h"
#import "Asteroid.h"


@implementation EnemyGenerator

-(WorldObject *) generate {
    WorldObject *enemy =[[Asteroid alloc] initWithImageNamed:@"Earth.png"];
    [enemy setSpeed: 1];
    [enemy runAction:[SKAction repeatActionForever:[SKAction moveBy:CGVectorMake(100, 100) duration:1]]];
    return enemy;
}
-(void) hitBy: (SKSpriteNode *) obj{

}
@end
