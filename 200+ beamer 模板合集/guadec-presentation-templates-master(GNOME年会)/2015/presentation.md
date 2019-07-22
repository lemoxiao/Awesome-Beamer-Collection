% How to use Pandoc for creating awesome slides for GUADEC 2015
% Lasse Schuirmann (`lasse.schuirmann@gmail.com`)
% August 7, 2015

# Title Slide

Any text under a header 1 won't be shown. This is a title slide without
content!

---

![Evaluation of a Code Clone Detection](graph.png)

---

<!-- Leave the alternative text empty and add a backslash *plus a trailing space
or an extra newline* to get no image caption at all -->
![](graph.png)\


## Content Slide

Do math simply!

$$\sqrt{5} \neq 1$$

`Use` standard *markdown* **easily**.

### With Lower Level Headers

```python
def some_code(is_easy_to):
    integrate()

# With syntax highlighting, of course!
```

## Incrementally Showing Lists

<!-- Use > to make lists show incrementally. Oh you noticed?
     This is a comment! -->
> - Is
> - Dead
> - Easy!

# Compiling

## Compiling

Simply use `make pandoc` in this directory!
