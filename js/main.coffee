---
---


# Cookie Helpers

getCookie = (name) ->
  value = '; ' + document.cookie
  parts = value.split('; ' + name + '=')
  if parts.length == 2
    return parts.pop().split(';').shift()

setCookie = (name, value, days) ->
  if days?
    date = new Date()
    date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000))
    expires = '; expires=' + date.toUTCString()
  else
    expires = ''

  document.cookie = name + '=' + value + expires + '; path=/'

deleteCookie = (name) -> setCookie(name, null, -1)


# Main

main = ->
  for element in document.getElementsByClassName('no-js')
    element.classList.remove('no-js')
    element.classList.add('js')

  unless getCookie('logo_animation')?
    for element in document.getElementsByClassName('logo')
      element.classList.add("fade-in")
    setCookie('logo_animation', '1')

if document.addEventListener
  document.addEventListener('DOMContentLoaded', main, false)
  document.addEventListener("touchstart", (->), true)
else if window.addEventListener
  window.addEventListener('load', main, false);
  window.addEventListener("touchstart", (->), true)
