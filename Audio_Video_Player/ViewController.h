//
//  ViewController.h
//  Audio_Video_Player
//
//  Created by HealthOne on 24/10/16.
//  Copyright © 2016 akash. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *viewVideoPlayer;
- (IBAction)btnPlayVideoAV:(UIButton *)sender;
- (IBAction)btnPlayVideoAVPlayerController:(UIButton *)sender;
- (IBAction)btnAudoiPlay:(UIButton *)sender;

@end

