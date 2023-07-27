library(magrittr)

# Create 3 nested lists of vectors with different lengths
# Note: All lists do have the same items and names,
# but lengths of the vectors differ between the lists as well.
list_a <- list(
    town = "a",
    list(
      loc = c(1:10),
      elt = "foo"
    )
  )
list_b <- list(
    town = "b",
    list(
      loc = c(2:20),
      elt = "bar"
    )
  )
list_c <- list(
    town = "c",
    list(
      loc = c(3:30),
      elt = "bar"
    )
  )

# Nest all three lists in a single list
nested_list <- list(list_a, list_b, list_c)

# Unbundle the entire list into a single, tidy tibble
nested_list %>%
  purrr::map(
    .f = \(element){
      element %>%
        base::unlist() %>%
        tibble::tibble(
          name = names(.),
          value = .) %>%
        dplyr::mutate(
          name = dplyr::case_when(
            grepl("loc", .$name) ~ "loc",
            .default = name
          )
        ) %>%
        tidyr::pivot_wider(
          names_from = name,
          values_from = value,
          values_fn = list
        ) %>%
        tidyr::unnest(
          cols = names(.)
        )
    }
  ) %>%
  purrr::list_rbind()
