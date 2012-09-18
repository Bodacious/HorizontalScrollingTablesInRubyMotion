class ArticleCellIphone < ArticleCell
  
  include ControlVariables
  
  def initWithFrame(frame)
    if super

      self.thumbnail = UIImageView.alloc.initWithFrame(CGRectMake(ArticleCellHorizontalInnerPadding, ArticleCellVerticalInnerPadding, CellWidth - (ArticleCellHorizontalInnerPadding * 2), CellHeight - (ArticleCellVerticalInnerPadding * 2)))
      self.thumbnail.opaque = true

      self.contentView.addSubview(thumbnail)

      self.titleLabel = ArticleTitleLabel.alloc.initWithFrame(CGRectMake(0, (self.thumbnail.frame.size.height * 0.632), self.thumbnail.frame.size.width, (self.thumbnail.frame.size.height * 0.37)))
      self.titleLabel.opaque = true
      self.titleLabel.backgroundColor = UIColor.colorWithRed(0, green: 0.4745098, blue: 0.29019808, alpha: 0.9)
      self.titleLabel.textColor = UIColor.whiteColor
      self.titleLabel.font = UIFont.boldSystemFontOfSize(11)
      self.titleLabel.numberOfLines = 2
      self.thumbnail.addSubview(self.titleLabel)

      self.backgroundColor = UIColor.colorWithRed(0, green: 0.40784314, blue: 0.21568627, alpha: 1.0)
      self.selectedBackgroundView = UIView.alloc.initWithFrame(self.thumbnail.frame)
      self.selectedBackgroundView.backgroundColor = HorizontalTableSelectedBackgroundColor

      self.transform = CGAffineTransformMakeRotation(Math::PI * 0.5)
    end
    self
  end

end