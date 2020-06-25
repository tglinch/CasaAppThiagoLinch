class WelcomeController < ApplicationController
  def index
  end
  
  
  def show_shop_list_item
      @shop_list_item = ShopList.all.map(&:item)
  end
  
  def show_shop_list_qtd
      @shop_list_qtd = ShopList.all.pluck(:qtd)
  end
  
end
