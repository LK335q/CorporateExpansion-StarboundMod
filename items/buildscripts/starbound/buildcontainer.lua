-- Silver Sokolova#3576
-- Enhanced Storage & Improved Containers compatibility
function build(directory, config, parameters)
  local a = root.assetJson("/objects/biome/scorchedcity/scorchedcityfridge/scorchedcityfridge.object").scripts
  if a and a[1] == "/scripts/enhancedstorage.lua" then
    config.tooltipKind = "container"
    config.tooltipFields = {}
  elseif a and a[1] == "/scripts/v6/improvedcontainer.lua" then
    config.itemAgingScritps = {"/scripts/v6/improvedcontainerrotting.lua"}
  end
  return config, parameters
end
