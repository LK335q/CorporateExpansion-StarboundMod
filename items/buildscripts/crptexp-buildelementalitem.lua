function build(directory, config, parameters, level, seed)

  config.tooltipFields = config.tooltipFields or {}

  config.tooltipFields.damageKindImage = parameters.elementalType or config.elementalType

  return config, parameters
end
