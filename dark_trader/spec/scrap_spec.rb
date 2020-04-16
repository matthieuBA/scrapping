require_relative "../lib/scrap"

describe "putes" do
    it "count fo putes should return 200" do
      expect(scrap.count).to eq(200)
    end
    it "count fo putes should return true" do
      expect((scrap[scrap.count-1].length)>0).to eq(true)
    end
  end
