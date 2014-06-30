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

-(id) initWithScene:(SKScene *)gameScene{
    self = [super init];
    if(self){
        _gameScene = gameScene;
        _enemies = [[NSMutableArray alloc] init];
        _generateTime = 2.0f;
        _generateTicCounter = 0.0f;
    }
    return self;
}
-(void)update:(CFTimeInterval)deltaTime{
    _generateTicCounter += deltaTime;
    if(_generateTicCounter > _generateTime){
        WorldObject *enemy =[[Asteroid alloc] initWithImageNamed:@"Earth.png"];
        [enemy setSpeed: 1];
        [enemy runAction:[SKAction repeatActionForever:[SKAction moveBy:CGVectorMake(100, 100) duration:1]]];
        [_enemies addObject:enemy];
        [_gameScene addChild:enemy];
        _generateTicCounter -= _generateTime;
    }
}
-(int) hitBy: (SKSpriteNode *) obj{
    int hitNum= 0;
    int length = [_enemies count];
    for(int i = 0; i < length; i++){
        WorldObject* enemy = _enemies[i];
        if([enemy hitBy: obj])
            hitNum++;
    }
    return hitNum;
}
@end
