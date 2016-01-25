//
//  VideoDetailVC.h
//  motiv
//
//  Created by abraham villaroman on 1/17/16.
//  Copyright © 2016 abraham villaroman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Video.h"
#import "videoModel.h"

@interface VideoDetailVC : UIViewController <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *webViewHC;
@property (weak, nonatomic) IBOutlet UILabel *quoteLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UILabel *startTime;

@property (nonatomic)NSString *vTitle;
@property (nonatomic)NSString *vID;
@property (nonatomic)NSString *vQuote;
@property (nonatomic)NSString *vAuthor;
@property (nonatomic)NSString *vST;


//method that is called after the view comes one the screen

//opens the original video
- (IBAction)ogVideo:(id)sender;

//methods to load the video when the user touches the a table view cell
- (UIButton *)findButtonInView:(UIView *)view;

- (void)webViewDidFinishLoad:(UIWebView *)_webView;

@end
