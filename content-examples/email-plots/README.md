# Conditional Emails with Quarto

## Send an email conditionally

- <https://docs.posit.co/connect/user/quarto/index.html#email-customization> 
- <https://quarto.org/docs/authoring/conditional.html> 
- <https://github.com/rich-iannone/quarto-email/issues/9> 

Modify the yaml to change the output format (note that a specific quarto version or most recent is required): 

```
format: email
```

Add a section to define the email content. Files can be attached, calculation outputs can be included, and this can even be wrapped in a conditional statement to only send on certain conditions: 

Randomly select a condition to demonstrate different conditions: 

```r
variant <- sample(1:3, 1)
```

```r
#| output: asis
cat(
  "---",
  paste0("is_email_variant_",variant,": true"),
  "---",
  sep = "\n"
)
```

```
::: {.email}

This email was sent from Quarto! With conditional output for condition `r variant`

::: {.content-visible when-meta="is_email_variant_1"}

email body 1

```r
print('case 1')
```

Remember to pick up groceries on you way home. Tonight is "breakfast
for dinner" and we're having French Toast!

* Bread
* Eggs
* Butter
* Milk

::: {.subject}
subject 1
:::

:::

::: {.content-visible when-meta="is_email_variant_2"}

email body 2

```r
print('case 2')
```

Remember to pick up groceries on you way home. Tonight is "Tex-mex" and we're having tacos!

* Onions
* Bell peppers
* Fajita
* Tortillas
* Lime
* Avocado

::: {.subject}
subject 2
:::


:::

::: {.content-visible when-meta="is_email_variant_3"}

email body 3

```r
print('case3')
```

Remember to pick up groceries on you way home. Tonight we're having stir fry!

* Snap peas
* Noodles
* Tofu
* Soy Sauce
* Rice

::: {.subject}
subject 3
:::

:::

::: {.email-scheduled}
TRUE
:::

:::

## Logging

Case: `r variant`

Report run: `r Sys.time()`
```

```

::: {.email}

::: {.subject}
Buy groceries
:::

Remember to pick up groceries on you way home. Tonight is "breakfast
for dinner" and we're having French Toast!

* Bread
* Eggs
* Butter
* Milk

:::
```