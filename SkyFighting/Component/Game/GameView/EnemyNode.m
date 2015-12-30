//
//  EnemyNode.m
//  SkyFighting
//
//  Created by 孙昕 on 15/12/27.
//  Copyright © 2015年 孙昕. All rights reserved.
//

#import "EnemyNode.h"

@implementation EnemyNode
-(void)fire
{
    SCNParticleSystem *sys=[SCNParticleSystem particleSystemNamed:@"FirePartical" inDirectory:nil];
    [self addParticleSystem:sys];
    [self removeAllAudioPlayers];
    SCNAudioSource *source=[SCNAudioSource audioSourceNamed:@"blast.wav"];
    source.positional=YES;
    source.volume=0.5;
    [source load];
    [self addAudioPlayer:[SCNAudioPlayer audioPlayerWithSource:source]];
}
@end
