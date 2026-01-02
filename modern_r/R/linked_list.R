# singly linked list implemented with explicit indices
# simulates pointers using integer positions

linked_list_init <- function(max_size = 100) {
  list(
    value = rep(NA_integer_, max_size),
    next_node  = rep(NA_integer_, max_size),
    head  = NA_integer_,
    free  = 1L,
    size  = 0L
  )
}

linked_list_insert_front <- function(ll, new_value) {
  if (ll$free > length(ll$value)) {
    stop("list is full")
  }

  pos <- ll$free
  ll$free <- ll$free + 1L

  ll$value[pos] <- new_value
  ll$next_node[pos]  <- ll$head
  ll$head <- pos
  ll$size <- ll$size + 1L

  return(ll)
}

linked_list_search <- function(ll, target) {
  current <- ll$head

  while (!is.na(current)) {
    if (ll$value[current] == target) {
      return(current)
    }
    current <- ll$next_node[current]
  }

  return(NA_integer_)
}

linked_list_to_vector <- function(ll) {
  result <- integer(0)
  current <- ll$head

  while (!is.na(current)) {
    result <- c(result, ll$value[current])
    current <- ll$next_node[current]
  }

  return(result)
}

