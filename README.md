# MatTheme

Tema oscuro para Omarchy con azules profundos, texto crema y animaciones suaves.
Preparado y probado en Omarchy 4.0.4 / Hyprland 0.56.2.

## Paleta

| Color | Uso |
|---|---|
| `#0d1321` | Fondo |
| `#1d2d44` | Superficies secundarias |
| `#3e5c76` | Selección |
| `#748cab` | Acentos |
| `#f0ebd8` | Texto |

Paleta original: https://coolors.co/palette/0d1321-1d2d44-3e5c76-748cab-f0ebd8
Se conservan colores semánticos de Nord para errores, avisos y sintaxis.

## Contenido

- `colors.toml`: colores para las plantillas nativas de Omarchy.
- `hyprland.lua`: bordes y animaciones de ventanas, capas, popups y workspaces.
- `shell.toml`: colores, tipografía y tamaños del shell.
- `icons.theme`: iconos Yaru-blue.
- `backgrounds/`: dos wallpapers proporcionados por el usuario.
- `extras/`: ajustes opcionales del escritorio y cursores.

## Instalación desde una copia local de confianza

Guarda este proyecto en `~/MatTheme` y crea el enlace:

```bash
mkdir -p ~/.config/omarchy/themes
ln -s ~/MatTheme ~/.config/omarchy/themes/mattheme
omarchy theme set mattheme
```

Si ya existe `~/.config/omarchy/themes/mattheme`, revisa su contenido antes de crear el enlace.
El enlace local permite mantener el repositorio Git separado y conservar el Lua del tema.
La instalación mediante `omarchy theme install` filtra los archivos Lua de temas descargados;
con esa vía se aplica la paleta, pero no las animaciones personalizadas.

Para alternar wallpapers:

```bash
omarchy theme bg next
```

Puedes añadir fondos a `backgrounds/` y reaplicar el tema, o colocarlos en
`~/.config/omarchy/backgrounds/mattheme/` sin modificar el repositorio.

## Ajustes opcionales

Los archivos de `extras/` son fragmentos que se revisan y se integran con la configuración
propia; no se instalan automáticamente al seleccionar el tema.

- `looknfeel.lua`: radio de 14 px, transparencia, blur y oscurecimiento. Integrar en `~/.config/hypr/looknfeel.lua`; los ajustes personales se cargan después del tema y pueden sobrescribirlo.
- `brave.lua`: Brave y sus aplicaciones web opacos y sin blur. Añadir su contenido al final de `~/.config/hypr/hyprland.lua`.
- `kitty.conf`: cursor de línea, parpadeo suave y rastro corto. Añadir al final de `~/.config/kitty/kitty.conf`.
- `vscode-settings.json`: integrar estas claves en los ajustes de usuario de VS Code.

Barra nativa continua y opaca, con el menú de Omarchy antes de los workspaces:

```bash
omarchy bar use omarchy.bar
omarchy bar transparent false
omarchy bar position top
omarchy plugin enable omarchy.menu
omarchy bar move omarchy.menu --section left --index 0
```

Se conservan los widgets existentes. Los plugins adicionales del equipo original
no son necesarios para instalar la paleta y no están incluidos en este proyecto.

Tras editar Hyprland, validar con `hyprctl reload` y `hyprctl configerrors`.
Para recargar los cursores de terminal: `omarchy restart terminal`.
El efecto de cursor depende de cada aplicación. El radio redondea ventanas y
superficies compatibles, no las esquinas físicas del monitor.

## Wallpapers

Los nombres originales de los archivos se conservan en `backgrounds/`.
No se ha determinado su licencia ni se les atribuye una licencia nueva en este proyecto.
