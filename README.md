# On Leave | onleave
> A hook that triggers when a player leaves the game.
### Dependencies
- [six](https://github.com/sixslime/six)
- [onjoin](https://github.com/sixslime/onjoin)
- [pdata](https://github.com/sixslime/pdata) (optional)

# Usage
Add subscriber functions to the `#onjoin:hook/on_leave` function tag. \
This tag will run when any player leaves the game; on the same tick that they leave. \
Additional data is stored under the storage namespace `onleave:hook` upon tag execution:
- `on_leave[-1].info.UUID`: The UUID of the player that left.
- `on_leave[-1].info.index`: The `pdata-index` score of the player that left. (only present if [pdata](github.com/sixslime/onjoin) is installed.)
## Example
#### Send a message in chat when any player leaves the game:  
*\<your datapack\>/data/onleave/tags/function/hook/on_leave.json*
```json
{
    "values": [
        "mypack:_/my_subscriber"
    ]
}
```
*\<your datapack\>/data/mypack/function/\_/my\_subscriber.mcfunction*
```mcfunction
tellraw @a ["","Player with UUID ",{"nbt":"on_leave[-1].info.UUID","storage":"onleave:hook"}," has left the game."]
```
### Meta Notes
This is a temporary README! A more standard and thorough documentation is planned.
