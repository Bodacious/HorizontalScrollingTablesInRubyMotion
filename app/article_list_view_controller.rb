class ArticleListViewController < UITableViewController
  
  attr_accessor :articleDictionary, :reusableCells

  # ==================
  # = View Lifecycle =
  # ==================

  def viewDidLoad
    super    
    self.articleDictionary = NSDictionary.dictionaryWithContentsOfFile(NSBundle.mainBundle.pathForResource "Articles", ofType: "plist")
  end

  def viewDidUnload
    super
    self.articleDictionary = nil
    self.reusableCells = nil
  end

  # ==========================
  # = Table View Data Source =
  # ==========================

  def numberOfSectionsInTableView(tableView)
    articleDictionary.keys.count
  end

  def tableView(tableView, numberOfRowsInSection: section)
    1
  end

  # =====================
  # = Memory Management =
  # =====================

  def didReceiveMemoryWarning
    super
    # Release any cached data, images, etc that aren't in use.
  end

  def dealloc
    self.articleDictionary = nil
    self.reusableCells = nil
    super
  end

end