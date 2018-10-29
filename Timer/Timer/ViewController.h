//
//  ViewController.h
//  Timer
//
//  Created by Sai Vittal B on 10/29/18.
//  Copyright © 2018 Sai Vittal B. All rights reserved.
//

#import <UIKit/UIKit.h>

int timercount;

@interface ViewController : UIViewController {
    IBOutlet UILabel *timerlabel;
    
    NSTimer *timer;
}

- (void)count;
- (IBAction)start:(id)sender;
- (IBAction)stop:(id)sender;
- (IBAction)restart:(id)sender;

@end

