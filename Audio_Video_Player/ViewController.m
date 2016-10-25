//
//  ViewController.m
//  Audio_Video_Player
//
//  Created by HealthOne on 24/10/16.
//  Copyright © 2016 akash. All rights reserved.
//

#import "ViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
{
    AVPlayer *player;
    AVPlayerViewController *avPlayerViewController;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnPlayVideoAV:(UIButton *)sender
{
    // Local or server url
    NSURL *url = [NSURL URLWithString:@"http://techslides.com/demos/sample-videos/small.mp4"];
    player = [AVPlayer playerWithURL:url];
    player.actionAtItemEnd = AVPlayerActionAtItemEndNone;

    AVPlayerLayer *layer = [AVPlayerLayer playerLayerWithPlayer:player];
    player.actionAtItemEnd = AVPlayerActionAtItemEndNone;
    layer.frame = self.viewVideoPlayer.bounds;
    [self.viewVideoPlayer.layer addSublayer: layer];
    
    [player play];
}

- (IBAction)btnPlayVideoAVPlayerController:(UIButton *)sender
{
    // Local or server url
    NSURL *url = [NSURL URLWithString:@"http://techslides.com/demos/sample-videos/small.mp4"];
    
    AVURLAsset *asset = [AVURLAsset assetWithURL: url];
    AVPlayerItem *item = [AVPlayerItem playerItemWithAsset: asset];
    AVPlayer *avPlayer = [[AVPlayer alloc] initWithPlayerItem: item];
    
    avPlayerViewController = [[AVPlayerViewController alloc] init];
    avPlayerViewController.player = avPlayer;
    [avPlayerViewController.view setFrame:self.view.bounds];
    
    avPlayerViewController.showsPlaybackControls = YES;
    
    [self presentViewController:avPlayerViewController animated:YES completion:NULL];

    [avPlayer play];
}

- (IBAction)btnAudoiPlay:(UIButton *)sender
{
    
}

@end
