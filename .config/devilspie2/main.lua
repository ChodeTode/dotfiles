win = string.lower(get_window_name())
app = string.lower(get_application_name())

--- applied to all windows
undecorate_window()

if (string.match(app, "firefox")) then
    set_window_geometry(1291,15,2538,2082)
    debug_print("putting firefox")
end


if (string.match(app, "trello")) then
    set_window_workspace(5)
    set_window_fullscreen(true)
    debug_print("putting trello")
end

if (string.match(app, "sxiv")) then
    set_window_fullscreen(true)
    debug_print("putting sxiv in full screen")
end

if (string.match(app, "caja")) then
    debug_print("putting caja")
    set_window_geometry(1291,725,1264,1372)
end
if (string.match(win, "plex")) then
    pin_window()
    make_always_on_top()
    debug_print("putting caja")
    set_window_geometry(10,1454,1266,696)
end
