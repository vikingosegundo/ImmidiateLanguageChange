#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self languageDidChange];
}


-(void)languageDidChange
{
    self.label.text = NSLocalizedString(@"Hello World", nil);
    self.imageView.image = [UIImage imageNamed:NSLocalizedString(@"image.png", nil)];
}

@end