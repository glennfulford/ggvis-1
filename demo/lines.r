library(ggvis)

set.seed(1780)
df <- data.frame(x = runif(12), y = runif(12), z = gl(3, 4))

ggvis(df, props(x = ~x, y = ~y)) + mark_path()

# Grouping, manually specified
ggvis(df, by_group(z), props(x = ~x, y = ~y, stroke = ~z, fill := NA)) +
  mark_path() +
  mark_symbol()

# Data sorted by x
ggvis(df, transform_sort(), props(x = ~x, y = ~y)) + mark_path() + mark_symbol()
# Data sorted by y
ggvis(df, transform_sort(var = "y"), props(x = ~x, y = ~y)) +
  mark_path() +
  mark_symbol()

# Grouping with auto_split, and sorted
ggvis(df, auto_split(), transform_sort(),
  props(x = ~x, y = ~y, stroke = ~z, fill := NA)) +
  mark_path() +
  mark_symbol()


# Using layer_line
ggvis(df, props(x = ~x, y = ~y, stroke = ~z, fill := NA)) +
  layer_line() +
  mark_symbol()
