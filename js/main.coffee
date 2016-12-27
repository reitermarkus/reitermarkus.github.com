---
---

((fn) ->
  if document.addEventListener
    document.addEventListener('DOMContentLoaded', fn, false)
    document.addEventListener("touchstart", (->), true)
  else if window.addEventListener
    window.addEventListener('load', fn, false);
    window.addEventListener("touchstart", (->), true)
)(->
  for element in document.getElementsByClassName('no-js')
    element.classList.remove('no-js')
    element.classList.add('js')

  unless sessionStorage['logo_animation']?
    for element in document.getElementsByClassName('logo')
      element.classList.add("fade-in")
    sessionStorage['logo_animation'] = true
)
