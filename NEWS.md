breakDown 0.1.5
----------------------------------------------------------------
* small changes in `broken.default` to make it work with `xgboost` and other non `data.frame` data
* `broken.lm` supports unnormalized coefficients (thanks to Joseph Larmarange) just add `predict.function = betas`  [#9](https://github.com/pbiecek/breakDown/issues/9)

breakDown 0.1.4
----------------------------------------------------------------
* `broken.default` is now model agnostic!
* `broken.ranger` is removed since `broken.default` is much better
* small fixes in `print` and `plot` functions, a new vigniette for model agnostic plots

breakDown 0.1.3
----------------------------------------------------------------
* small fixes and submission to CRAN

breakDown 0.1.2
----------------------------------------------------------------
* `broken.lm` and `broken.glm` are now supporting interactions  ([#7](https://github.com/pbiecek/breakDown/issues/7))
* `print()` and `plot()` functions are now handling different options for rounding via additional arguments `digits = 3`, `rounding_function = round` ([#8](https://github.com/pbiecek/breakDown/issues/8))

breakDown 0.1.1
----------------------------------------------------------------
* the `baseline` argument is added to the `broken` function  ([#1](https://github.com/pbiecek/breakDown/issues/1))
* vignettes for lm and glm models are added ([#2](https://github.com/pbiecek/breakDown/issues/2))

breakDown 0.1
----------------------------------------------------------------
* waterfall like plots and support for lm models
* waterfall like plots and support for glm models
* HR dataset added
