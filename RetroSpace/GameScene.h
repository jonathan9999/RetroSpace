//
//  MyScene.h
//  RetroSpace
//

//  Copyright (c) 2014 Clouby. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "ScoreLabel.h"
#import "EnemyGenerator.h"

@interface GameScene : SKScene

@property ScoreLabel *scoreLabel;
@property EnemyGenerator *enemyGenerator;

@end
