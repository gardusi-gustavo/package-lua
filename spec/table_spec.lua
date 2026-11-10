describe("gardusi.table", function()
  local helpers = require("gardusi.table")

  it("merges nested tables", function()
    local merged = helpers.deep_merge({ a = { b = 1 } }, { a = { c = 2 } })
    assert.are.equal(1, merged.a.b)
    assert.are.equal(2, merged.a.c)
  end)

  it("finds values", function()
    assert.is_true(helpers.contains({ "a", "b" }, "b"))
    assert.is_false(helpers.contains({ "a", "b" }, "c"))
  end)

  it("sorts keys", function()
    assert.are.same({ "a", "b" }, helpers.keys({ b = 1, a = 2 }))
  end)
end)
