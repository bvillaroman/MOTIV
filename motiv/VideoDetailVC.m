//
//  VideoDetailVC.m
//  motiv
//
//  Created by abraham villaroman on 1/17/16.
//  Copyright © 2016 abraham villaroman. All rights reserved.
//

#import "VideoDetailVC.h"

@implementation VideoDetailVC
//the format to the string
static NSString *youTubeVideoHTML = @"<html><head><style type=\"text/css\">body {background-color: transparent;color: white;}</style></head><body style=\"margin:0\"><iframe frameBorder=\"0\" height=\"%0.0f""\" width=\"%0.0f""\" src=\"http://www.youtube.com/embed/%@""?showinfo=0&modestbranding=1&frameborder=0&rel=0\"></iframe></body></html>";
-(void)viewDidLoad{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.webView setDelegate:self];

    
}


- (void)viewDidAppear:(BOOL)animated{
    //_webView.delegate = self;
    //if there valid value for _vTitle and _vID
    if (_vTitle && _vID){
        //sets the labels
        self.titleLabel.text = _vTitle;
        self.quoteLabel.text = _vQuote;
        self.authorLabel.text = _vAuthor;
        self.startTime.text = _vST;
        
        //edits the webview according to the video's diameters
        CGFloat width = self.view.frame.size.width;
        CGFloat height= (width/320)*180;
        self.webViewHC.constant = height;
        
        
        //formats the url such that the current video's id is displayed along
        NSString *videoEmbedString = [NSString stringWithFormat:youTubeVideoHTML,height,width,_vID];
        
        [_webView loadHTMLString:videoEmbedString baseURL:[[NSBundle mainBundle] resourceURL]];
        
        self.webView.mediaPlaybackRequiresUserAction = NO;
    }
 
}

- (IBAction)ogVideo:(id)sender {
    // opens the link of the original video 
    NSString* urlString= [NSString stringWithFormat:@"https://www.youtube.com/watch?v=%@",_vID];
    NSURL *url = [NSURL URLWithString:urlString];
    [[UIApplication sharedApplication] openURL:url];
}

- (UIButton *)findButtonInView:(UIView *)view{
    //creates a button
    UIButton *button = nil;
    
    // finds the first UIButton and returns it
    if([view isMemberOfClass:[UIButton class]]){
        return (UIButton *)view;
    }
    
    else{
        NSLog(@"didn't find a button");
    }
    

    
    //returns the button
    return button;
    
}


- (void)webViewDidFinishLoad:(UIWebView *)_webView{
    //when the webview loads, find the button within the web view
    UIButton *b = [self findButtonInView:self.webView];
    //press the button within that web view
    [b sendActionsForControlEvents:UIControlEventTouchUpInside];
     //NSLog(@"shit worked");
}


@end
