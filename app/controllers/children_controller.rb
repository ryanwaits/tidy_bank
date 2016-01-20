class ChildrenController < ApplicationController
  def index
  end

  def show
  end

  def new
    @child = Child.new
  end
end
