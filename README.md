Aplicación que implementa un menú lateral el cual se muestra seleccionando un icono (Hamburguesa) en la barra de navegación, este menú busca imitar la funcionalidad del NavigationDrawer de Android.

Este proyecto se creó siguiendo el siguiente post
https://medium.com/yay-its-erica/making-a-hamburger-slide-out-menu-in-swift-3-ef5249b6693e


- El efecto de menu lateral oculto se logra agregando un View que se superpone a la View del ViewController principal
- La view del ViewController principal contiene los botones del menú
- El icono de menú (Hamburguesa) se ubica en la barra de navegación
- Mediante un @IBaction asociado al botón de menú, se modifican las restricciones Leading y Trailing de la vista superpuesta para desplazarla y permitir ver los botones de la vista principal