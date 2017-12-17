class CompaniesController < InmobifyController

  def index
    p "Index"
    @elements = Company.all
    result(nil,@elements)
  end

  def show    
    p "Show"
    @element = Company.find(params[:id]) rescue nil
    result(companies_path,@element)
  end

  def new
    p "New"
    @element = Company.new()
  end

  def create
    p "Create"
    @element = Company.new( name: params["company"]["name"] )
    if ( @element != nil ) && ( !@element.save )
      @element = nil
    end
    result(companies_path,@element)
  end

  def edit
    p "Edit"
    @element = Company.find(params[:id]) rescue nil
  end

  def update
    p "Update"
    @element = Company.find(params[:id]) rescue nil
    if ( @element != nil ) && ( !@element.update( name: params["company"]["name"] ) )
      @element = nil
    end
    result(companies_path,@element)
  end

  def destroy
    p "Destroy"
    @element = Company.find(params[:id]) rescue nil
    if ( @element != nil ) && ( !@element.destroy )
      @element = nil
    end
    result(companies_path,@element)
  end

end
