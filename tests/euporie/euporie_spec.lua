local plugin = require("euporie")

describe("setup", function()
  -- it("works with default", function()
  --   assert(plugin.hello() == "Hello!", "my first function with param = Hello!")
  -- end)
  --
  -- it("works with custom var", function()
  --   plugin.setup({ opt = "custom" })
  --   assert(plugin.hello() == "custom", "my first function with param = custom")
  it("has a notebook function", function()
    assert(type(plugin.notebook) == "function", "notebook is a function")
  end)
  
  it("has default graphics_dpi config", function()
    assert(plugin.config.graphics_dpi == 300, "default graphics_dpi is 300")
  end)
  
  it("has default graphics_height config", function()
    assert(plugin.config.graphics_height == 40, "default graphics_height is 40")
  end)
  
  it("can set custom graphics_dpi", function()
    plugin.setup({ graphics_dpi = 600 })
    assert(plugin.config.graphics_dpi == 600, "graphics_dpi can be customized")
  end)
  
  it("can set custom graphics_height", function()
    plugin.setup({ graphics_height = 80 })
    assert(plugin.config.graphics_height == 80, "graphics_height can be customized")
  end)
end)
