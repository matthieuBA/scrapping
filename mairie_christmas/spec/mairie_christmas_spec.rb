require_relative "../lib/mairie_christmas"

describe "putes" do
    it "count fo putes should return 577" do
      expect(get_townhall_urls.count).to eq(185)
    end
    it "count fo putes should return 577" do
      expect((get_townhall_urls[get_townhall_urls.count-1].length)>0).to eq(true)
    end
  end
