//
//  ScoreLabel.m
//  RetroSpace
//
//  Created by Nir Boneh on 6/29/14.
//  Copyright (c) 2014 Clouby. All rights reserved.
//

#import "ScoreLabel.h"

@interface ScoreLabel()
-(void) updateText;
@end

@implementation ScoreLabel


-(id) initWithFontNamed:(NSString *)fontName
{
    self = [super initWithFontNamed:fontName];
    if(self){
        _score = 0;
        [self updateText];
    }
    return self;
}
-(void) incScore:(int) inc{
    _score += inc;
     [self updateText];
}

-(void) updateText{
    self.text = [@"Score: " stringByAppendingString:[@(_score) stringValue]];
}

-(void) drawInTopLeft:(CGRect)frame{
   self.position = CGPointMake(10,(CGRectGetHeight(frame) -CGRectGetHeight(frame)) - 10);

}
                 
@end
