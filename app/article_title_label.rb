class ArticleTitleLabel < UILabel
  
  include ControlVariables

  # CHANGE: This is different from the Objective C version
  # not possible to call super without raising a NoMethodError here
  # def setPersistentBackgroundColor(color)
  #   super
  # end
  # 
  # def setBackgroundColor(color)
  #   # do nothing - background color never changes
  # end

  def drawTextInRect(rect)
    newWidth = rect.size.width - ArticleTitleLabelPadding
    newHeight = rect.size.height
    newRect = CGRectMake(ArticleTitleLabelPadding * 0.5, 0, newWidth, newHeight)
    super
  end
  
end