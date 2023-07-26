library(magrittr)

# Create a deeply nested list
obj1 <- list(town = "a", list(loc = c(1:10), elt = "foo"))
obj2 <- list(town = "b", list(loc = c(2:20), elt = "bar"))
obj3 <- list(town = "c", list(loc = c(3:30), elt = "baz"))

nested_list <- list(obj1, obj2, obj3)

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
