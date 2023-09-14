# Tmux config

## Keybindings

Prefix key: **`<C-z>`**

I remap most of the default bindings of tmux, in the next tables I show the new **Bind** and the **Unbind** that It replace with a **Description**

### Basic

|   Bind    | Unbind  | Description               |
| :-------: | :-----: | :------------------------ |
|  `<C-z>`  | `<C-b>` | Send the prefix key       |
| `<C-M-R>` |   N/A   | Reload config             |
|    `:`    |   N/A   | Command prompt            |
|    `?`    |   N/A   | List default key bindings |

### Panes

#### Pane movement / swap / rotate

|   Bind    |  Unbind   | Description            |
| :-------: | :-------: | ---------------------- |
|    `k`    |  `<Up>`   | Move Up                |
|    `j`    | `<Down>`  | Move Down              |
|    `h`    | `<Left>`  | Move Left              |
|    `l`    | `<Right>` | Move Right             |
|  `<C-k>`  |    `;`    | Prev pane              |
|  `<C-j>`  |    `o`    | Next pane              |
|  `<C-h>`  |    `{`    | Swap with prev pane    |
|  `<C-l>`  |    `}`    | Swap with next pane    |
| `<C-M-h>` |  `<C-o>`  | Rotate panes backwards |
| `<C-M-l>` |  `<M-o>`  | Rotate panes forwards  |

#### Pane resize

|   Bind    |   Unbind    | Description     |
| :-------: | :---------: | --------------- |
|  `<M-k>`  |  `<C-Up>`   | Resize +1 cell  |
|  `<M-j>`  | `<C-Down>`  | Resize +1 cell  |
|  `<M-h>`  | `<C-Left>`  | Resize +1 cell  |
|  `<M-l>`  | `<C-Right>` | Resize +1 cell  |
| `<M-S-k>` |  `<M-Up>`   | Resize +5 cells |
| `<M-S-j>` | `<M-Down>`  | Resize +5 cells |
| `<M-S-h>` | `<M-Left>`  | Resize +5 cells |
| `<M-S-l>` | `<M-Right>` | Resize +5 cells |

### Pane layout

|    Bind     | Unbind | Description             |
| :---------: | :----: | :---------------------- |
|   `<M-1>`   |  N/A   | Layout: even-horizontal |
|   `<M-2>`   |  N/A   | Layout: even-vertical   |
|   `<M-3>`   |  N/A   | Layout: main-horizontal |
|   `<M-4>`   |  N/A   | Layout: main-vertical   |
|   `<M-5>`   |  N/A   | Layout: tiled           |
|  `<Space>`  |  N/A   | Next layout             |
| `<C-Space>` |  N/A   | Prev layout             |
| `<M-Space>` |  `E`   | Spread panes evenly     |

#### Pane management

| Bind  | Unbind | Description              |
| :---: | :----: | ------------------------ |
|  `z`  |  N/A   | Zoom pane                |
|  `!`  |  N/A   | Break pane in new window |
|  `s`  |  `"`   | Split horizontal         |
|  `v`  |  `%`   | Split vertical           |
|  `x`  |  `x`   | Kill pane                |

### Windows

#### Window select

|  Bind   | Unbind  | Description            |
| :-----: | :-----: | :--------------------- |
| `[0-9]` |   N/A   | Select windows 0-9     |
|   `'`   |   `w`   | Choose window          |
|   `\`   |   `l`   | Last window            |
|   `[`   |   `p`   | Prev window            |
|   `]`   |   `n`   | Next window            |
| `<C-[>` | `<M-p>` | Prev window with alert |
| `<C-]>` | `<M-n>` | Next window with alert |

#### Window management

| Bind  | Unbind | Description   |
| :---: | :----: | :------------ |
|  `r`  |  `,`   | Rename window |
|  `c`  |  N/A   | New window    |
|  `X`  |  `&`   | Kill window   |

### Sessions

#### Session select

|  Bind   | Unbind | Description    |
| :-----: | :----: | :------------- |
| `<M-'>` |  `s`   | Choose session |
| `<M-\>` |  `L`   | Last session   |
| `<M-[>` |  `(`   | Prev session   |
| `<M-]>` |  `)`   | Next session   |

#### Session management

|  Bind   | Unbind  | Description    |
| :-----: | :-----: | :------------- |
| `<M-r>` |   `$`   | Rename session |
| `<M-c>` |   N/A   | New session    |
| `<M-x>` |   N/A   | Kill session   |
| `<M-d>` | `<C-d>` | Detach client  |
| `<M-z>` | `<C-z>` | Suspend client |


### Buffers

|  Bind   | Unbind | Description       |
| :-----: | :----: | :---------------- |
| `<C-v>` |  `[`   | Enter copy mode   |
|   `p`   |  `]`   | Paste last buffer |
|   `-`   |  `#`   | List buffers      |
|   `=`   |  N/A   | Choose buffer     |

### Removed bindings

|  Unbind   | Description                                       |
| :-------: | :------------------------------------------------ |
| `Page Up` | Enter copy mode and scroll one page up            |
|    `r`    | Force redraw of the attached client               |
|    `i`    | Display some information about the current window |
|    `t`    | Show the time                                     |
|    `m`    | Mark the current pane (see select-pane -m)        |
|    `M`    | Clear the marked pane                             |
|    `f`    | Prompt to search for text in open windows         |
|    `D`    | Choose a client to detach                         |
|    `q`    | Briefly display pane indexes                      |
|    `'`    | Prompt for a window index to select               |
|    `.`    | Prompt for an index to move the current window    |
|    `~`    | Show previous messages from tmux, if any          |
|    `-`    | Delete the most recently copied buffer of text    |
