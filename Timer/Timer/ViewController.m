//
//  ViewController.m
//  Timer
//
//  Created by Sai Vittal B on 10/29/18.
//  Copyright © 2018 Sai Vittal B. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    timercount = 0;
    timerlabel.text = [NSString stringWithFormat:@"0"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose any resources that can be recreated.
}

- (void)count{
    timercount = timercount + 1;
    timerlabel.text = [NSString stringWithFormat:@"%i", timercount];
}
- (IBAction)start:(id)sender {
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(count) userInfo:nil repeats:true];
}
- (IBAction)stop:(id)sender {
    [timer invalidate];
}
- (IBAction)restart:(id)sender {
    timercount = 0;
    timerlabel.text = [NSString stringWithFormat:@"0"];
    [timer invalidate];
}

@end
