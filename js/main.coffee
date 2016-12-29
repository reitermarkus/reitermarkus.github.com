---
---

((fn1, fn2) ->
  if document.addEventListener
    document.addEventListener('DOMContentLoaded', fn1, false)
    document.addEventListener('touchstart', (->), false)
    document.addEventListener('beforeunload', fn2, false)
  else if window.addEventListener
    window.addEventListener('load', fn1, false)
    window.addEventListener('touchstart', (->), false)
    window.addEventListener('beforeunload', fn2, false)
)(
  ->
    for element in document.getElementsByClassName('no-js')
      element.classList.remove('no-js')
      element.classList.add('js')

    unless sessionStorage.getItem('logo_animation')?
      for element in document.getElementsByClassName('logo')
        element.classList.add("fade-in")
      sessionStorage.setItem('logo_animation', true)

  ->
    localStorage.removeItem('logo_animation')
)
