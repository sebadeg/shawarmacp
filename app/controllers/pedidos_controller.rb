class PedidosController < ApplicationController

def result(outputHTML,outputJSON)
    respond_to do |format|
      format.html { 
        if outputHTML != nil
          redirect_to outputHTML
        end      
      }
      format.json { 
        if outputJSON != nil
          render :json => outputJSON, :status => :ok
        else
          render :json => "", :status => :bad_request
        end
      }
    end
  end
  
  def index
    p "Index"
    @elements = Pedido.all
    result(nil,@elements)
  end

  def show    
    p "Show"
    @element = Pedido.find(params[:id]) rescue nil
    result(pedidos_path,@element)
  end

  def new
    p "New"
    @element = Pedido.new()
  end

  def create
    p "Create"
    @element = Pedido.new( 
      nombre: params["pedido"]["nombre"], 
      carne: params["pedido"]["carne"],
      pollo: params["pedido"]["pollo"],
      falafel: params["pedido"]["falafel"],
      mayonesa: params["pedido"]["mayonesa"],
      salsa: params["pedido"]["salsa"],
      humus: params["pedido"]["humus"],
      tahini: params["pedido"]["tahini"],
      yogurt: params["pedido"]["yogurt"],
      lechuga: params["pedido"]["lechuga"],
      tomate: params["pedido"]["tomate"],
      cebolla: params["pedido"]["cebolla"],
      repollo: params["pedido"]["repollo"],
      zanahoria: params["pedido"]["zanahoria"],
      ciboulette: params["pedido"]["ciboulette"],
      aceitunas: params["pedido"]["aceitunas"],
      picante: params["pedido"]["picante"],
      papaspay: params["pedido"]["papaspay"] )
    if ( @element != nil ) && ( !@element.save )
      @element = nil
    end
    result(pedidos_path,@element)
  end

  def edit
    p "Edit"
    @element = Pedido.find(params[:id]) rescue nil
  end

  def update
    p "Update"
    @element = Pedido.find(params[:id]) rescue nil
    if ( @element != nil ) && ( !@element.update( 
      nombre: params["pedido"]["nombre"], 
      carne: params["pedido"]["carne"],
      pollo: params["pedido"]["pollo"],
      falafel: params["pedido"]["falafel"],
      mayonesa: params["pedido"]["mayonesa"],
      salsa: params["pedido"]["salsa"],
      humus: params["pedido"]["humus"],
      tahini: params["pedido"]["tahini"],
      yogurt: params["pedido"]["yogurt"],
      lechuga: params["pedido"]["lechuga"],
      tomate: params["pedido"]["tomate"],
      cebolla: params["pedido"]["cebolla"],
      repollo: params["pedido"]["repollo"],
      zanahoria: params["pedido"]["zanahoria"],
      ciboulette: params["pedido"]["ciboulette"],
      aceitunas: params["pedido"]["aceitunas"],
      picante: params["pedido"]["picante"] ) )
      @element = nil
    end
    result(pedidos_path,@element)
  end

  def destroy
    p "Destroy"
    @element = Pedido.find(params[:id]) rescue nil
    if ( @element != nil ) && ( !@element.destroy )
      @element = nil
    end
    result(pedidos_path,@element)
  end

end
