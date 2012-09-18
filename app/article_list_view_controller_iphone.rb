class ArticleListViewControllerIphone < ArticleListViewController
  
  HeadlineSectionHeight  = 26
  RegularSectionHeight   = 18
  
  
  include ControlVariables

  # ==================
  # = View Lifecycle =
  # ==================

  def viewDidLoad
    if super
      if !self.reusableCells
        sortDescriptor = NSSortDescriptor.sortDescriptorWithKey(nil, ascending: true, selector: 'localizedCompare:')
        sortedCategories = articleDictionary.keys.sortedArrayUsingDescriptors [sortDescriptor]
        self.reusableCells = []
        self.articleDictionary.keys.each do |key|
          cell = HorizontalTableCellIphone.alloc.initWithFrame CGRectMake(0, 0, 320, 416)
          cell.articles = articleDictionary[key]
          self.reusableCells << cell
        end
      end
      
      self.tableView.backgroundColor = VerticalTableBackgroundColor
      self.tableView.rowHeight = CellHeight + (RowVerticalPadding * 0.5) + ((RowVerticalPadding * 0.5) * 0.5)
      
    end
  end


  # ==========================
  # = Table View Data Source =
  # ==========================

  def tableView(tableView, heightForHeaderInSection: section)
    section == 0 ? HeadlineSectionHeight : RegularSectionHeight
  end

  def tableView(tableView, viewForHeaderInSection: section)
    if section == 0
      customSectionHeaderView = UIView.alloc.initWithFrame(CGRectMake(0, 0, tableView.frame.size.width, HeadlineSectionHeight))
      titleLabel = UILabel.alloc.initWithFrame(CGRectMake(10, 0, tableView.frame.size.width, HeadlineSectionHeight))
      labelFont = UIFont.boldSystemFontOfSize(20)
    else
      customSectionHeaderView = UIView.alloc.initWithFrame(CGRectMake(0, 0, tableView.frame.size.width, RegularSectionHeight))
      titleLabel = UILabel.alloc.initWithFrame(CGRectMake(10, 0, tableView.frame.size.width, RegularSectionHeight))
      labelFont = UIFont.boldSystemFontOfSize(13)
    end

    customSectionHeaderView.backgroundColor = UIColor.colorWithRed(0, green: 0.40784314, blue: 0.21568627, alpha:0.95)
    titleLabel.textAlignment = UITextAlignmentLeft
    titleLabel.textColor = UIColor.whiteColor
    titleLabel.backgroundColor = UIColor.clearColor
    titleLabel.font = labelFont

    sortDescriptor   = NSSortDescriptor.sortDescriptorWithKey(nil, ascending: true, selector: 'localizedCompare:')
    sortedCategories = self.articleDictionary.keys.sortedArrayUsingDescriptors([sortDescriptor])

    categoryName = sortedCategories[section]
    titleLabel.text = categoryName.substringFromIndex(1)
    customSectionHeaderView.addSubview(titleLabel)
    customSectionHeaderView
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    reusableCells[indexPath.section]
  end
  
end