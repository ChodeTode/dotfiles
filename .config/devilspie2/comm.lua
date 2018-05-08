win = string.lower(get_window_name())
app = string.lower(get_application_name())

if (string.match(win,"whatsapp")) then
    set_window_workspace(1)
    set_window_geometry(11,15,1264,669)
    debug_print("putting whatsapp")
end

if (string.match(win,"telegram")) then
    set_window_workspace(1)
    set_window_geometry(1291,15,1258,669)
    debug_print("putting telegram")
end

if (string.match(win,"signal")) then
    set_window_workspace(1)
    set_window_geometry(2565,15,1264,669)
    debug_print("putting signal")
end

if (string.match(win,"mozilla thunderbird")) then
    set_window_workspace(1)
    set_window_geometry(11,725,1264,1372)
    debug_print("putting thunderbird")
end

if (string.match(win,"gitter")) then
    set_window_workspace(1)
    set_window_geometry(1291,725,1264,1372)
    debug_print("putting gitter")
end

if (string.match(win,"write:")) then
    set_window_workspace(1)
    set_window_geometry(1291,725,1264,1372)
    debug_print("putting compose email")
end
