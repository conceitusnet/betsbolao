module ApplicationHelper
  #Retorna o título completo por página
  def full_title(page_title = '')
    base_title = "BetsBolão sites de apostas do brasileirão"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
