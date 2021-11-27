import "tfplan"

main = rule {
  all tfplan.resources.aws*instance as *, instances {
    all instances as \_, r {
      (length(r.applied.tags) else 0) > 0
    }
  }
}
