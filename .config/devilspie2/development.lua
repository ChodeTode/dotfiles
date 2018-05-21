app = string.lower(get_application_name())
win = string.lower(get_window_name())

if (string.match(win, "intellij idea")) then
    set_window_geometry(11,15,2538,2082)
    set_window_workspace(3)
    debug_print("putting trello")
end

if (string.match(app, "urxvt")) then
    set_window_geometry(1291,15,1258,669)
    debug_print("putting urxvt")
end

if (string.match(app, "zathura")) then
    set_window_geometry(2565,15,1264,2082)
    debug_print("putting zathura")
end
