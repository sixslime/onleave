# On Leave | onleave
> Provides a single hook that triggers when a player leaves the game.
### Dependencies
- [six](github.com/sixslime/six)
- [onjoin](github.com/sixslime/onjoin)
- [pdata](github.com/sixslime/onjoin) (optional)

# Usage
Add subscriber functions to the `#onjoin:hook/on_leave` function tag.
```json
{
    "values": [
        "<your function>"
    ]
}
```
This tag will run when any player leaves the game; on the same tick that they leave. \
Additional data is stored under the storage namespace `onleave:hook` upon hook execution:
- `on_leave\[-1\].info.UUID`: The UUID of the player that left.
- (if pdata is installed) `on_leave\[-1\].info.index`: The `pdata-index` score of the player that left.
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
