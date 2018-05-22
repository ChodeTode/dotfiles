win = string.lower(get_window_name())
app = string.lower(get_application_name())

--- grid settings. get info with $> xwininfo

x0 = 10   --- padding top left
y0 = 10   --- padding top top
x1 = 3830 --- max right pix
y1 = 2119 --- max bottom pix
n  = 4    --- x dim columns
m  = 3    --- y dim rows

n_width  = (x1-x0) / n
m_height = (y1-y0) / m


--- the desktop is split into a n x m grid
function fit_to_grid(app, start_x, start_y, width_x, width_y)

    x0_ = x0 + n_width  * (start_x -1)
    width = n_width * width_x
    y0_ = y0 + m_height * (start_y -1)
    height = m_height * width_y

    debug_print(app.. " placed at x0 " .. x0_ .. " y0 " .. y0_ .. " width " .. width .. " height " .. height)
    set_window_geometry(x0_, y0_, width, height)

end


debug_print(app)
--- applied to all windows
undecorate_window()

------------------------------------------------------------------------------------------
--- productivity tools
------------------------------------------------------------------------------------------

if (string.match(win, "intellij idea")) then
    fit_to_grid(app, 1,1,2,3)
    set_window_workspace(3)
end

if (string.match(win, "pycharm")) then
    fit_to_grid(app, 1,1,2,3)
    set_window_workspace(3)
end


if (string.match(app, "urxvt")) then
    ---set_window_geometry(1291,15,1258,669)
    fit_to_grid(app, 2,1,2,1)
end

if (string.match(app, "zathura")) then
    fit_to_grid(app, 4,1,1,3)
end
--- floats over other windows

if (string.match(app, "phone")) then
    debug_print("putting" .. app)
    set_skip_tasklist(true)
    set_skip_pager(true)
    make_always_on_top()
    set_opacity(0.8)
    set_window_geometry(3178,1716,652,368)
    pin_window()
end

------------------------------------------------------------------------------------------
--- General applications 
------------------------------------------------------------------------------------------
if (string.match(app, "firefox")) then
    fit_to_grid(app, 3,1,2,3)
end


if (string.match(app, "trello")) then
    set_window_workspace(5)
    set_window_fullscreen(true)
end

if (string.match(app, "sxiv")) then
    set_window_fullscreen(true)
end

if (string.match(app, "caja")) then
    debug_print("putting caja")
    fit_to_grid(app, 2,3,2,1)
end

------------------------------------------------------------------------------------------
---  media / entertainment
------------------------------------------------------------------------------------------

if (string.match(win, "plex")) then
    pin_window()
    make_always_on_top()
    fit_to_grid(app, 4,3,1,1)
end

if (string.match(win, "mplayer")) then
    pin_window()
    make_always_on_top()
    fit_to_grid(app, 4,3,1,1)
end



------------------------------------------------------------------------------------------
--- communication
------------------------------------------------------------------------------------------

if (string.match(win,"whatsapp")) then
    set_window_workspace(1)
    fit_to_grid(app, 1,1,1,2)
    debug_print("putting whatsapp")
end

if (string.match(win,"telegram")) then
    set_window_workspace(1)
    fit_to_grid(app, 2,1,2,1)
end

if (string.match(app,"signal")) then
    set_window_workspace(1)
    fit_to_grid(app, 1,1,1,2)
end

if (string.match(win,"mozilla thunderbird")) then
    set_window_workspace(1)
    fit_to_grid(app, 1,2,2,2)
end

if (string.match(win,"gitter")) then
    set_window_workspace(1)
    fit_to_grid(app, 3,2,2,2)
end

if (string.match(win,"write:")) then
    set_window_workspace(1)
    fit_to_grid(app, 3,2,2,2)
end

if (string.match(win,"messenger")) then
    set_window_workspace(1)
    fit_to_grid(app, 4,1,1,2)
end



