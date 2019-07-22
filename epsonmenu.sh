  #!/bin/bash
    # Este script utiliza el comando escputil para comprobar su impresora
    # Instrucciones de uso:
    # Se ha buscado información para limpiar cabezales de impresoras epson utilizando ubuntu.
    # Se localiza información del siguiente script que ha resultado efectivo y funcional.
    # Fuente1: https://sites.google.com/site/ubuntupraxis/limpiar-cabezales-impresoras-epson
    # Fuente2: Publicado en año: 2007 El link: http://www.ubuntu-es.org/node/41301#.VFtqp1EX1AQ que ya no existe.
    # Fuente3: Publicado en año: 2011 Script para administrar impresoras EPSON en linux
    # http://www.portalubuntu.com/2011/03/script-para-administrar-impresoras.html ya no existe
    # Se instala escputil:     sudo apt-get install escputil
    # Se puede ver su ayuda con la orden: escputil --help
    # Se crea el archivo en ~/:     sudo gedit ~/epsonmenu.sh
    # Se añade el siguiente código el siguiente código 
    # Se da permisos de ejecución:     sudo chmod +x ~/epsonmenu.sh
    # Se ejecuta con:     sudo ~/epsonmenu.sh
    # O se ejecuta con:     ~/epsonmenu.sh
    echo "************************************************************"
    # especificamos el modelo de nuestra impresora:
    # con la orden: ls -la /dev/usb 
    # veremos las posibles direcciones de nuestra impresora.
    # Fuente4: https://juncotic.com/escputil-controlando-impresora-epson/
    # Fuente5: https://www.taringa.net/+linux/epson-utility-niveles-de-tinta-limpiesa-cabezales_12ppyl
    LaImpresora=/dev/usb/lp1
    while true
    do
    echo "[1] Limpiar cabezal de impresión."
    echo "[2] Imprimir patrón de prueba."
    echo "[3] Nivel de tinta."
    echo "[4] Alinear cabezales.¡CUIDADO! Vea la ayuda antes."
    echo "[5] Alinear cabezal color. ¡CUIDADO! Vea la ayuda antes."
    echo "[6] Recoger status de impresora"
    echo "[7] Consultar Marca y Modelo"
    echo "[8] Consultar Modelos disponibles"
    echo "[9] Ayuda y Licencia"
    echo "[c] Limpiar cabezales.                  "
    echo "[n] Imprimir test de inyectores.        "
    echo "[s] Estado y nivel de tinta.            "
    echo "[m] Modelos soportados por _escputil_.(q para continuar)  "
    echo "[h] Ayuda _escputil_.                   "
    echo "[0] Salir"
    read -p "Escriba una opción: " OPCION
    echo "### ### ### ### ### ### ### ### ### ### ### ### ### ### ###"
    case $OPCION in
    1) sudo escputil -c -qr $LaImpresora;;
    2) sudo escputil -n -qr $LaImpresora;;
    3) sudo escputil -i -qr $LaImpresora;;
    4) sudo escputil -a -qr $LaImpresora;;
    5) sudo escputil -o -qr $LaImpresora;;
    6) sudo escputil -s -qr $LaImpresora;;
    7) sudo escputil -d -qr $LaImpresora;;
    8) sudo escputil -M -qr $LaImpresora | more;;
    9) sudo escputil -h -qr $LaImpresora | more; sudo escputil -l -r $LaImpresora;;
    'c') sudo escputil -c -ur $LaImpresora;;
    'n') sudo escputil -n -ur $LaImpresora;;
    's') sudo escputil -s -ur $LaImpresora;;
    'm') sudo escputil -M -ur $LaImpresora | less;;
    'h') sudo escputil -h | less;;
    0) echo "¡Que pase buen día…!"
    break;;
    *)
    echo "Opción no válida, pruebe otra vez.";;
    esac
    done
    exit 0 
