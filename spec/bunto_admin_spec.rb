describe BuntoAdmin do
  include Rack::Test::Methods

  it "returns the site" do
    expect(described_class.site.class).to eql(Bunto::Site)
    expect(described_class.site.source).to eql(fixture_path("site"))
  end
end
