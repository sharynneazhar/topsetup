module CategoriesHelper
  def getCategoryName(id)
    Category.find(id).name
  end
end
