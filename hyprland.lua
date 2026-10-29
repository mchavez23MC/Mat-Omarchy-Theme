-- MatTheme: colores y movimiento propios del tema.
hl.config({
  general = { col = { active_border = { colors = { "rgb(748cab)", "rgb(3e5c76)" }, angle = 45 }, inactive_border = "rgb(1d2d44)" } },
  group = { col = { border_active = "rgb(748cab)", border_inactive = "rgb(1d2d44)" } },
  animations = { enabled = true },
})
hl.curve("azulOut", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })
hl.curve("azulInOut", { type = "bezier", points = { { 0.65, 0 }, { 0.35, 1 } } })
hl.animation({ leaf = "windows", enabled = true, speed = 4, bezier = "azulOut" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.5, bezier = "azulOut", style = "slide bottom" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.5, bezier = "azulInOut", style = "slide bottom" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 3, bezier = "azulOut" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2, bezier = "azulInOut" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 3.5, bezier = "azulOut", style = "slide bottom" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2, bezier = "azulInOut", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 3, bezier = "azulOut" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 2, bezier = "azulInOut" })
hl.animation({ leaf = "fadePopupsIn", enabled = true, speed = 2.5, bezier = "azulOut" })
hl.animation({ leaf = "fadePopupsOut", enabled = true, speed = 1.5, bezier = "azulInOut" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.5, bezier = "azulOut", style = "slidefade 20%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4, bezier = "azulOut", style = "slidevert" })
