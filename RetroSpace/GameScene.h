//
//  MyScene.h
//  RetroSpace
//

//  Copyright (c) 2014 Clouby. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "ScoreLabel.h"
#import "EnemyGenerator.h"
#import "WorldObject.h"

@interface GameScene : SKScene

@property NSMutableArray *enemies; 
@property ScoreLabel *scoreLabel;
@property EnemyGenerator *enemyGenerator;
@property CFTimeInterval lastCurrentTime;

@end
