win = string.lower(get_window_name())
app = string.lower(get_application_name())

if (string.match(app, "firefox")) then
    set_window_geometry(1291,15,2538,2082)
    debug_print("putting firefox")
end

if (string.match(app, "urxvt")) then
    set_window_geometry(1291,15,1258,669)
    debug_print("putting urxvt")
end

if (string.match(app, "trello")) then
    set_window_workspace(5)
    set_window_fullscreen(true)
    debug_print("putting trello")
end

if (string.match(win, "intellij idea")) then
    set_window_geometry(11,15,2538,2082)
    set_window_workspace(4)
    debug_print("putting trello")
end
