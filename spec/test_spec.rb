require_relative '../lib/test'


RSpec.describe "Funções independentes" do
  it "calcula a soma de dois números" do
    expect(soma(2, 3)).to eq(5)
  end

  it "calcula a divisão de dois números" do
    expect(divisao(10, 2)).to eq(5.0)
  end

  it "lança um erro ao tentar dividir por zero" do
    expect { divisao(10, 0) }.to raise_error(ArgumentError, "Divisão por zero")
  end
end
