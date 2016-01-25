//
//  ViewDetail4.m
//  motiv
//
//  Created by abraham villaroman on 1/22/16.
//  Copyright © 2016 abraham villaroman. All rights reserved.
//

#import "ViewDetail4.h"

@interface ViewDetail4 ()

@end

@implementation ViewDetail4

static NSString *youTubeVideoHTML = @"<html><head><style type=\"text/css\">body {background-color: transparent;color: white;}</style></head><body style=\"margin:0\"><iframe frameBorder=\"0\" height=\"%0.0f""\" width=\"%0.0f""\" src=\"http://www.youtube.com/embed/%@""?showinfo=0&modestbranding=1&frameborder=0&rel=0\"></iframe></body></html>";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidAppear:(BOOL)animated{
    //if there valid value for _vTitle and _vID
    if (self.vTitle && self.vID){
        //sets the labels
        self.Title.text = self.vTitle;
        self.quote.text = self.vQuote;
        self.Author.text = self.vAuthor;
        self.start.text = self.vST;
        
        
        
        //edits the webview according to the video's diameters
        CGFloat width = self.view.frame.size.width;
        CGFloat height= (width/320)*180;
        self.wHeight.constant = height;
        
        
        
        //formats the url such that the current video's id is displayed along
        NSString *videoEmbedString = [NSString stringWithFormat:youTubeVideoHTML,height,width,self.vID];
        
        self.webs.mediaPlaybackRequiresUserAction = NO;
        
        [self.webs loadHTMLString:videoEmbedString baseURL:[[NSBundle mainBundle] resourceURL]];
    }
    
}

- (IBAction)OG:(id)sender{
    // opens the link of the original video
    NSString* urlString= [NSString stringWithFormat:@"https://www.youtube.com/watch?v=%@",self.vID];
    NSURL *url = [NSURL URLWithString:urlString];
    [[UIApplication sharedApplication] openURL:url];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
