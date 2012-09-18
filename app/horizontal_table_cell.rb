class HorizontalTableCell < UITableViewCell
    
  attr_accessor :horizontalTableView, :articles
  
  # ==========================
  # = Table View Data Source =
  # ==========================

  def tableView(tableView, numberOfRowsInSection: section)
    articles.count
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(ArticleCell.name) || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: cellIdentifier)
    end
    cell.textLabel.text = "The title of the cell in the table within the table :O"
    cell
  end

  # =====================
  # = Memory Management =
  # =====================

  def reuseIdentifier
    self.class.name
  end
  
end