class SkillsController < ApplicationController

  # GET /skills
  def index
    @skills = Skill.all
  end

  # GET /skill/:id
  def show
    @skill = Skill.find(params[:id])
  end

  # GET /skills/new
  def new
    @skill = Skill.new
  end

  # POST /skills
  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      redirect_to skill_path(@skill)
    end
  end

  # PUT/PATCH /skills/:id
  def update
    @skill = Skill.find(params[:id])
    if @skill.update(skill_params)
      redirect_to skill_path(@skill)
    end

  end

  # GET /skills/:id/edit
  def edit
    @skill = Skill.find(params[:id])
  end

  # DELETE /skills/:id
  def destroy
    @skill = Skill.find(params[:id])
    @skill.delete
  end

  private

  # Parámetros sanitizados a usar en el update
  # y en el create del modelo.
  def skill_params
    params.require(:skill).permit(:name, :description, :image)
  end
end
