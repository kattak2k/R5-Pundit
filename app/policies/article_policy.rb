class ArticlePolicy < ApplicationPolicy

before_action :status_return, only: [:update, :destroy]

def index?
    true
end    
def create?
  user.present?
end
def update?
end
def destroy?
end

private
def article
record     
end

def status_return
   return true if user.present? && user == article.user 
end    

end
