require_relative "../lib/des_putes_html"

describe "putes" do
    it "count fo putes should return 577" do
      expect(putes.count).to eq(577)
    end
    it "count fo putes should return 577" do
      expect((putes[putes.count-1].length)>0).to eq(true)
    end
  end

