class HorizontalTableCellIphone < HorizontalTableCell
  
  include ControlVariables
    
  # =========================
  # = UITableViewDatasource =
  # =========================
  
  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cell = tableView.dequeueReusableCellWithIdentifier(ArticleCellIphone.name)
    if cell.nil?
      cell = ArticleCellIphone.alloc.initWithFrame(CGRectMake(0, 0, CellWidth, CellHeight))
    end
    
    currentArticle = articles[indexPath.row]

    image = UIImage.imageNamed "Article Images/#{currentArticle["ImageName"]}"
    cell.thumbnail.image = image
    cell.titleLabel.text = currentArticle["Title"]
    cell
  end

  def initWithFrame(frame)
    if super
      x      = TableLength-RowHorizontalPadding-CellHeight * 0.5
      y      = -(TableLength-RowHorizontalPadding-CellHeight) * 0.5
      width  = CellHeight
      height = TableLength-RowHorizontalPadding
      self.horizontalTableView = UITableView.alloc.initWithFrame([[x, y], [width, height]])
      self.horizontalTableView.showsVerticalScrollIndicator = false
      self.horizontalTableView.showsHorizontalScrollIndicator = false
      self.horizontalTableView.transform = CGAffineTransformMakeRotation(-Math::PI * 0.5)
      self.horizontalTableView.rowHeight = CellWidth
      self.horizontalTableView.backgroundColor = HorizontalTableBackgroundColor

      self.horizontalTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine
      self.horizontalTableView.separatorColor = UIColor.clearColor

      self.horizontalTableView.dataSource = self
      self.horizontalTableView.delegate = self
      self.addSubview self.horizontalTableView
    end
    self
  end
  
end