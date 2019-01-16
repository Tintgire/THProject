require_relative '../lib/multiples.rb'

describe "est il multiple de 3 ou 5 ?" do
  it "3 est il multiple de 3 ou 5 ?" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
  end

  it "45 est il multiple de 3 ou 5 ?" do
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "7 est il multiple de 3 ou 5 ?" do
    expect(is_multiple_of_3_or_5?(7)).to eq(false)
  end
end

describe "combien fait la somme de 3 et 5" do
  it "10 combien fait la somme de 3 et 5" do
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
  end

  it "11 combien fait la somme de 3 et 5" do
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
  end

  it "0 combien fait la somme de 3 et 5" do
    expect(sum_of_3_or_5_multiples(0)).to eq(0)
  end

  it "3 combien fait la somme de 3 et 5" do
    expect(sum_of_3_or_5_multiples(3)).to eq(0)
  end

  it "-1 combien fait la somme de 3 et 5" do
    expect(sum_of_3_or_5_multiples(-1)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  end

  it "1.23 combien fait la somme de 3 et 5" do
    expect(sum_of_3_or_5_multiples(1.23)).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  end

  it "chiffre combien fait la somme de 3 et 5" do
    expect(sum_of_3_or_5_multiples("chiffre")).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  end
end
