---
---

loadAction = ->
  for element in document.getElementsByClassName('no-js')
    element.classList.remove('no-js')
    element.classList.add('js')

logoAnimation = ->
  unless sessionStorage.getItem('logo_animation')?
    for element in document.getElementsByClassName('logo')
      element.classList.add("fade-in")
    sessionStorage.setItem('logo_animation', true)

unloadAction = ->
  localStorage.removeItem('logo_animation')

addEventListeners = (d) ->
  d.addEventListener('focus', d.addEventListener('DOMContentLoaded', logoAnimation, false), false)
  d.addEventListener('DOMContentLoaded', loadAction, false)
  d.addEventListener('touchstart', (->), false)
  d.addEventListener('beforeunload', unloadAction, false)

if document.addEventListener
  addEventListeners(document)
else if window.addEventListener
  addEventListeners(window)
