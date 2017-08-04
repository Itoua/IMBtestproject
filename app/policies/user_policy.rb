class UserPolicy < Struct.new(:current_user, :scope)
  class Scope
    attr_reader :current_user, :scope
    
    def initialize(current_user, scope)
      @current_user = current_user
      @user = scope
    end

    def resolve
      @user
    end
  end

  def admin?
    current_user.admin?
  end

  def new?
    admin?
  end

  def show?
    current_user.admin? || current_user == scope
  end

  def update?
    show?
  end

  def destroy?
    update?
  end

  def edit? 
    destroy?
  end
end