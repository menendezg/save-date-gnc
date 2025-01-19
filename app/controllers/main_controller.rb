class MainController < ApplicationController
  def show
    @couple = "Camila y Gabriel"
    @data = {
      dresscode: {
        title: "Dress code",
        img: "suit.png",
        content: "Elegante riguroso"
      },
      gifts: {
        img: "gift.png",
        title: "Regalo", 
        content: "El mejor regalo para nosotros es contar con tu presencia en este dia
                  tan importante pero si quieres tener un detalle con nosotros puedes ayudanos a contribuir
                  con nuestra luna de miel soñada"
      },
      confirmation: {
        img: "check.png",
        title: "Confirmación", 
        content: "Para que tengamos la mejor velada posible te pedimos por favor
                  que confirmes tu asistencia en el siguiente link. Muchas gracias"
      },
    }
  end
end
