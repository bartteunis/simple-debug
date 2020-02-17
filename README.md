# Debug
A couple of scripts to draw the most common things to screen

## Macros

> `ev_draw_debug`

User event number to be used for debug drawing. The default value is 15.

## Usage

```
with(obj_with_debug_event) {
    event_user(ev_draw_debug);
    dbg_drawln();
}
```

## Functions
### General
> `dbg_init()`

Initialize the debug functions.

> `dbg_draw_start(x, y)`

Start drawing debug info.

> `dbg_draw(string)`

Draw the given string at the current debug position.

> `dbg_drawln()`

Write a newline.

> 

### Data structures

> `dbg_draw_list(list)`

Draw the given list. Each item is put on its own line.

> `dbg_draw_map(map)`

Draw the given map as a key : value pair on each line.

> `dbg_draw_grid(grid)`

Draw the given grid.

### Other

> `dbg_draw_physics()`

Draw the debug representation of the physics world.

> `dbg_draw_surface(surface)`

Draw the given surface.