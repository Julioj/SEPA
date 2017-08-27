class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
    @visits=Visit.where(:companyId => params[:id])
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    
    #@city = City.find(params[:city_id])
    #@company.city_id = @city.id
    @company = Company.new(company_params)
    logger.debug "intentando guardar Cliente"
    respond_to do |format|
      if @company.save
        logger.debug "Cliente guardado con exito"
        @company.visit.each do |visit|
          daysFromNow = Frecuency.find(visit.frecuencyTypeId).days
          nextVisitDate = visit.visitDate + daysFromNow.day
          while nextVisitDate < (Date.today + 365.day)
            logger.debug "creando visita para la fecha  #{nextVisitDate.inspect}"
            @nextVisit = Visit.new(visit.attributes)
            @nextVisit.visitDate = nextVisitDate
            @nextVisit.id = nil
            logger.debug "guardando visita #{@nextVisit.inspect}"
            @nextVisit.save
            logger.debug "visita guardada #{@nextVisit.inspect}"
            nextVisitDate = nextVisitDate + daysFromNow.day
            logger.debug "proxima visita en #{daysFromNow} dias"
            logger.debug "proxima visita #{nextVisitDate.inspect}"
          end
        end
        format.html { redirect_to @company, notice: 'Company was successfully created.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:id, :industryTypeId, :employeeId, :name, :email, :address, :cuit, :comment, :suscription, :visit_attributes=> [:id, :companyId, :visitTypeId, :frecuencyTypeId, :employeeId, :nextVisit, :visitDate, :aproved, :aprovalDate, :_destroy, :_update, :_save, :_create] )
    end
end
