require "rails_helper"

#RSpec.describe User, :type => :model do
RSpec.describe "ST001 - Cadastro de Usuários" do
  before(:all) do
    @user1 = create(:user)
  end
  it "CT-01: Usuário utiliza uma data de nascimento inválida" do
    user1 = build(:user, birthdate:"11/09/2015")
    expect(user1).to_not be_valid
  end
  
  it "CT-02: Usuário utiliza uma data de nascimento válida" do
    user2 = build(:user, email: "test@valid.com", birthdate:"11/09/2000")
    expect(user2).to be_valid
  end
  
  it "CT-03: Usuário utiliza uma senha inválida" do 
    user3 = build(:user, password: "123", password_confirmation: "123")
    expect(user3).to_not be_valid
  end

  it "CT-04: Usuário utiliza uma senha válida" do 
    user4 = build(:user, password: "123456", password_confirmation: "123456")
    expect(user4).to_not be_valid
  end

  it "CT-25 Usuário fornece um input incompatível com o campo de e-mail" do 
    user5 = build(:user, email: "test.com")
    expect(user5).to_not be_valid
  end

  it "CT-26 Usuário fornece um input compatível com o campo de e-mail" do 
    user6 = build(:user, email: "test@test.com")
    expect(user6).to be_valid
  end
end
