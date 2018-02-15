require('rspec')
require('places')

describe("Places") do
  before() do
      Places.clear()
    end

  describe(".all") do
    it("is empty at first") do
      expect(Places.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves an item to the list of items") do
      place = Places.new("portland")
      place.save()
      expect(Places.all()).to(eq([place]))
    end
  end

  describe(".clear") do
  it("clears all items from the list") do
    place = Places.new("portland")
    place.save()
    Places.clear()
    expect(Places.all()).to(eq([]))
  end
end
end
