local M = {}

function M.keys(value)
  local result = {}
  for key in pairs(value or {}) do
    result[#result + 1] = key
  end
  table.sort(result, function(a, b) return tostring(a) < tostring(b) end)
  return result
end

function M.contains(value, needle)
  for _, item in ipairs(value or {}) do
    if item == needle then
      return true
    end
  end
  return false
end

function M.deep_merge(left, right)
  local result = {}
  for key, value in pairs(left or {}) do
    result[key] = value
  end
  for key, value in pairs(right or {}) do
    if type(value) == "table" and type(result[key]) == "table" then
      result[key] = M.deep_merge(result[key], value)
    else
      result[key] = value
    end
  end
  return result
end

return M
