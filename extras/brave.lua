-- Brave: fondo opaco y sin desenfoque, también en sus aplicaciones web.
o.window({ class = "^(brave-browser|Brave-browser|brave-.*)$" }, {
  no_blur = true,
  opacity = "1.0 override 1.0 override",
})
