class RentableController < ApplicationController
  def index
    @categoties = Rentable.all(:group => :category, :select => :category, :conditions => "category <> ''")
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @equipment }
    end
  end
  
  def category
    if params[:rent_group].blank?
      @rent_groups = Rentable.find_all_by_category(params[:category], 
                              :group => :rent_group, 
                              :select => :rent_group)

      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @rent_groups }
      end
    elsif params[:branch_number].blank?
      @rent_groups = Rentable.find_all_by_category_and_rent_group(params[:category], 
                              params[:rent_group], 
                              :group => :branch_name, 
                              :select => 'branch_name, branch_number')
      
      respond_to do |format|
        format.html { render :template => 'rentable/groups' } 
        format.xml  { render :xml => @rent_groups }
      end
    else
      @rent_trucks = Rentable.find_all_by_category_and_rent_group_and_branch_number(params[:category], 
                              params[:rent_group],
                              params[:branch_number])
      respond_to do |format|
        format.html { render :template => 'rentable/branchs' } 
        format.xml  { render :xml => @rent_groups }
      end
    end

  end

end
