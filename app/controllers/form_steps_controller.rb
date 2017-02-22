class FormStepsController < ApplicationController
  include Wicked::Wizard

  steps :add_images, :add_parts

  def show
    @setup = Setup.find(params[:setup_id])
    case step
    when :add_images
      @setup_image = @setup.setup_images.build
    when :add_parts
      @part = @setup.parts.build
      @categories = Category.all.map{|c| c.name }
    end
    render_wizard
  end

  def update
    @setup = Setup.find(params[:setup_id])
    case step
    when :add_images
      if params[:setup_images]
        params[:setup_images]['image'].each do |i|
          @setup_image = @setup.setup_images.create!(:image => i, :setup_id => @setup.id)
        end
      end
    when :add_parts
      if params[:parts]
        params[:parts].each do |pt|
          if pt['category'].present?
            @categoryId = Category.find_by(name: pt['category']).id
            @part = @setup.parts.create!(:name => pt['name'], :link => pt['link'], :setup_id => @setup.id, :category_id => @categoryId)
          end
        end
      end
    end
    render_wizard @setup
  end

  def create
    @setup = Setup.create
    redirect_to wizard_path(steps.first, :setup_id => @setup.id)
  end


end