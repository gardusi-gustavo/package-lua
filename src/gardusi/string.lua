local M = {}

function M.trim(value)
  if type(value) ~= "string" then
    return value
  end
  return (value:gsub("^%s+", ""):gsub("%s+$", ""))
end

function M.split(value, separator)
  local parts = {}
  if value == nil or value == "" then
    return parts
  end
  separator = separator or "%s+"
  for part in tostring(value):gmatch("([^" .. separator .. "]+)") do
    parts[#parts + 1] = part
  end
  return parts
end

function M.starts_with(value, prefix)
  return type(value) == "string" and type(prefix) == "string"
    and value:sub(1, #prefix) == prefix
end

function M.ends_with(value, suffix)
  return type(value) == "string" and type(suffix) == "string"
    and suffix == "" or value:sub(-#suffix) == suffix
end

return M
