class ArticleCell < UITableViewCell

  attr_accessor :titleLabel, :thumbnail

  def reuseIdentifier 
    self.class.name
  end

end