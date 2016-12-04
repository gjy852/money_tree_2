class LiabilityTypesController < ApplicationController
  def index
    @liability_types = LiabilityType.all

    render("liability_types/index.html.erb")
  end

  def show
    @liability_type = LiabilityType.find(params[:id])

    render("liability_types/show.html.erb")
  end

  def new
    @liability_type = LiabilityType.new

    render("liability_types/new.html.erb")
  end

  def create
    @liability_type = LiabilityType.new

    @liability_type.credit_cards = params[:credit_cards]
    @liability_type.other_current_liabilities = params[:other_current_liabilities]
    @liability_type.mortgages = params[:mortgages]
    @liability_type.student_loans = params[:student_loans]
    @liability_type.automobile_loans = params[:automobile_loans]
    @liability_type.other_long_term_liabilities = params[:other_long_term_liabilities]

    save_status = @liability_type.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/liability_types/new", "/create_liability_type"
        redirect_to("/liability_types")
      else
        redirect_back(:fallback_location => "/", :notice => "Liability type created successfully.")
      end
    else
      render("liability_types/new.html.erb")
    end
  end

  def edit
    @liability_type = LiabilityType.find(params[:id])

    render("liability_types/edit.html.erb")
  end

  def update
    @liability_type = LiabilityType.find(params[:id])

    @liability_type.credit_cards = params[:credit_cards]
    @liability_type.other_current_liabilities = params[:other_current_liabilities]
    @liability_type.mortgages = params[:mortgages]
    @liability_type.student_loans = params[:student_loans]
    @liability_type.automobile_loans = params[:automobile_loans]
    @liability_type.other_long_term_liabilities = params[:other_long_term_liabilities]

    save_status = @liability_type.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/liability_types/#{@liability_type.id}/edit", "/update_liability_type"
        redirect_to("/liability_types/#{@liability_type.id}", :notice => "Liability type updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Liability type updated successfully.")
      end
    else
      render("liability_types/edit.html.erb")
    end
  end

  def destroy
    @liability_type = LiabilityType.find(params[:id])

    @liability_type.destroy

    if URI(request.referer).path == "/liability_types/#{@liability_type.id}"
      redirect_to("/", :notice => "Liability type deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Liability type deleted.")
    end
  end
end
