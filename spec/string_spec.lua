describe("gardusi.string", function()
  local helpers = require("gardusi.string")

  it("trims whitespace", function()
    assert.are.equal("hello", helpers.trim("  hello  "))
  end)

  it("splits on commas", function()
    assert.are.same({ "a", "b", "c" }, helpers.split("a,b,c", ","))
  end)

  it("detects prefixes and suffixes", function()
    assert.is_true(helpers.starts_with("gardusi", "gar"))
    assert.is_true(helpers.ends_with("gardusi", "usi"))
    assert.is_false(helpers.starts_with("gardusi", "usi"))
  end)
end)
