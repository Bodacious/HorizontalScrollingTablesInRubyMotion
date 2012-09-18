class UINavigationBar # (UINavigationBarCustomDraw)
  
  def drawRect(rect)
    UIImage.imageNamed("NavBar.png").drawInRect(rect)
    self.topItem.titleView = UIView.alloc.init
    self.tintColor = UIColor.colorWithRed(0.6745098, green: 0.6745098, blue: 0.6745098, alpha:1.0)
  end

end

class AppDelegate

  def window
    @window ||= UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  end
  
  def navigationController
    @navigationController ||= UINavigationController.alloc.initWithRootViewController(ArticleListViewControllerIphone.alloc.init)
  end
  
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    window.rootViewController = navigationController
    window.makeKeyAndVisible
    true
  end
  
end
