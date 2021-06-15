class ClassMaterialsController < ApplicationController
  before_action :set_class_material, only: [:show, :edit, :update, :destroy]

  # GET /class_materials
  def index
    @class_materials = ClassMaterial.all
  end

  # GET /class_materials/1
  def show
  end

  # GET /class_materials/new
  def new
    @class_material = ClassMaterial.new
  end

  # GET /class_materials/1/edit
  def edit
  end

  # POST /class_materials
  def create
    @class_material = ClassMaterial.new(class_material_params)

    if @class_material.save
      redirect_to @class_material, notice: 'Class material was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /class_materials/1
  def update
    if @class_material.update(class_material_params)
      redirect_to @class_material, notice: 'Class material was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /class_materials/1
  def destroy
    @class_material.destroy
    redirect_to class_materials_url, notice: 'Class material was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_material
      @class_material = ClassMaterial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def class_material_params
      params.require(:class_material).permit(:name, :material_url, uploads: [])
    end
end
