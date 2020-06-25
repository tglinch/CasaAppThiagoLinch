module ApplicationHelper
  def show_shop_list
      @shop_list = ShopList.all.pluck {|shop_list| [shop_list.item, shop_list.qtd]  }
  end
  
  def show_to_do_work_homework
      @to_do_work = Work.all.pluck(:homework)
  end
  
  def show_to_do_work_desc
      @to_do_work_des = Work.all.pluck(:description)
  end
  
  def show_to_do_work_hour
      @to_do_work_hour = Work.all.pluck(:hour)
  end
  
  
  def show_familiar
      @show_familiar= Familiar.all.pluck(:name)
  end
  
  def show_work
     @show_work = Work.all.pluck {|work| [homework = work.homework, familiar = work.familiar.name, description = work.description, hour =  work.hour]}
  end
 
end
