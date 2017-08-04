class PhotoPolicy < Struct.new(:current_user, :scope)
  class Scope 
    attr_reader :current_user, :scope
    
    def initialize(current_user, scope)
      @current_user = current_user
      @photo = scope
    end

    def resolve
      if current_user.admin?
        @photo
      else
        @photo.where(user: current_user) | @photo.where(public_view: true)
      end 
    end
  end
  
  def new?
    true
  end

  def show?
    current_user.admin? || current_user == scope.user
  end

  def edit? 
    show?
  end

  def update?
    edit?
  end

  def destroy?
    update?
  end


end