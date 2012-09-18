module ControlVariables
  TableLength                            = 320
  # Width of the cells of the embedded table view (after rotation, which means it controls the rowHeight property)
  CellWidth                              = 106
  # Height of the cells of the embedded table view (after rotation, which would be the table's width)
  CellHeight                             = 106

  # Padding for the Cell containing the article image and title
  ArticleCellVerticalInnerPadding        = 3
  ArticleCellHorizontalInnerPadding      = 3

  # Padding for the title label in an article's cell
  ArticleTitleLabelPadding               = 4

  # Vertical padding for the embedded table view within the row
  RowVerticalPadding                     = 0
  # Horizontal padding for the embedded table view within the row
  RowHorizontalPadding                   = 0


  # The background color of the vertical table view
  VerticalTableBackgroundColor           = UIColor.colorWithRed(0.58823529, green: 0.58823529, blue: 0.58823529, alpha: 1.0)

  # Background color for the horizontal table view (the one embedded inside the rows of our vertical table)
  HorizontalTableBackgroundColor         = UIColor.colorWithRed(0.6745098, green: 0.6745098, blue: 0.6745098, alpha: 1.0)

  # The background color on the horizontal table view for when we select a particular cell
  HorizontalTableSelectedBackgroundColor = UIColor.colorWithRed(0.0, green: 0.59607843, blue: 0.37254902, alpha:1.0)  
end
