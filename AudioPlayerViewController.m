//
//  AudioPlayerViewController.m
//  Audio_Video_Player
//
//  Created by HealthOne on 25/10/16.
//  Copyright © 2016 akash. All rights reserved.
//

#import "AudioPlayerViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AudioPlayerViewController ()<AVAudioPlayerDelegate>
{
    AVAudioPlayer *avAudioPlayer;
}

@end

@implementation AudioPlayerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.slider.minimumValue = 0.0;
    self.slider.maximumValue = 1.0;
    [self.slider setValue:0.7];
    
    NSError *error;
    NSURL *url = [[NSBundle mainBundle]URLForResource:@"song" withExtension:@"mp3"];
    avAudioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:&error];
    avAudioPlayer.delegate = self;
    [avAudioPlayer prepareToPlay];
}

- (IBAction)btnPlayCLicked:(UIButton *)sender
{
    [avAudioPlayer play];
    
    [avAudioPlayer setVolume:self.slider.value];
}

- (IBAction)btnStopClicked:(UIButton *)sender
{
    [avAudioPlayer stop];
}

- (IBAction)sliderValueChanged:(UISlider *)sender
{
    [avAudioPlayer setVolume:sender.value];
}

#pragma mark - AVAudoiPlayer Delegate
- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag
{
    
}

- (void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError * __nullable)error
{
    
}

- (void)audioPlayerBeginInterruption:(AVAudioPlayer *)player
{
    
}

- (void)audioPlayerEndInterruption:(AVAudioPlayer *)player
{
    
}

@end
