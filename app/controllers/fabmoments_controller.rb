class FabmomentsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_fabmoment, only: [:show, :edit, :update, :destroy, :download_file]

  # GET /fabmoments
  # GET /fabmoments.json
  def index
    if params[:tag].present?
      @fabmoments = Fabmoment.tagged_with(params[:tag]).paginate(page: params[:page], per_page: 10)
    elsif params[:search].present?
      @fabmoments = Fabmoment.search(params[:search]).paginate(page: params[:page], per_page: 10)
    else
      @fabmoments = Fabmoment.paginate(page: params[:page], per_page: 10)
    end
  end

  # GET /fabmoments/1
  # GET /fabmoments/1.json
  def show
    @comments = Comment.all
    @machines = Machine.all 
    # @comment = @fabmoment.comments.find()
  end

  # GET /fabmoments/new
  def new
    @fabmoment = current_user.fabmoments.build
    @machines = Machine.all
    @programs = Program.all
    @materials = Material.all
  end

  # GET /fabmoments/1/edit
  def edit
  end

  # POST /fabmoments
  # POST /fabmoments.json
  def create
    @fabmoment = current_user.fabmoments.build(fabmoment_params)

    respond_to do |format|
      if @fabmoment.save
        format.html { redirect_to @fabmoment, notice: 'Fabmoment was successfully created.' }
        format.json { render :show, status: :created, location: @fabmoment }
      else
        format.html { render :new }
        format.json { render json: @fabmoment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fabmoments/1
  # PATCH/PUT /fabmoments/1.json
  def update
    respond_to do |format|
      if @fabmoment.update(fabmoment_params) && @fabmoment.update_attribute(:image, params[:fabmoment][:image])
        format.html { redirect_to @fabmoment, notice: 'Fabmoment was successfully updated.' }
        format.json { render :show, status: :ok, location: @fabmoment }
      else
        format.html { render :edit }
        format.json { render json: @fabmoment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fabmoments/1
  # DELETE /fabmoments/1.json
  def destroy
    redirect_to homepage_path unless current_user && current_user.admin?
    
    if current_user.admin?
    @fabmoment.destroy
    respond_to do |format|
      format.html { redirect_to fabmoments_url, notice: 'Fabmoment was successfully destroyed.' }
      format.json { head :no_content }
    end
    else
      redirect_to fabmoments_url
    end
  end

  def download_file
    send_file(@fabmoment.file.path,
          :disposition => 'attachment',
          :url_based_filename => false)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fabmoment
      @fabmoment = Fabmoment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fabmoment_params
      params.require(:fabmoment).permit(:title, :desc, :rights, 
        :machines_ultimaker_original, :machines_ultimaker_original_plus, :machines_ultimaker_two, 
        :machines_ultimaker_two_plus, :machines_lasercutter, :machines_vinylcutter, 
        :machines_scanner, :settings, :software_illustrator, :software_tinkercad, 
         :software_sketchup, :software_inkscape, :software_blender, 
         :multiplex_3mm, :multiplex_4mm, :multiplex_6mm, :plexiglas_trans_3mm,
         :plexiglas_trans_5mm, :plexiglas_trans_10mm, :plexiglas_trans_15mm, :plexiglas_white_3mm,
         :plexiglas_white_5mm, :plexiglas_blue_3mm, :plexiglas_ylw_3mm, :plexiglas_grn_trans_3mm,
         :plexiglas_red_trans_3mm, :cardboard, :cardboard_wave, :vinyl, :foil, :pla, :mo, :is_basedon, 
         :basedon, :wentwell, :wentbad, :nexttime, :sources, :image, :file, :tag_names,
         machine_ids:[], program_ids:[], material_ids:[])
    end
end
