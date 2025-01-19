class MainController < ApplicationController
  class TimeLine
    attr_reader :img, :time, :content, :switch
    def initialize(img, time, content, switch)
      @img = img
      @time = time 
      @content = content
      @switch = switch
    end
  end

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
      timeline: [
        TimeLine.new("icons/arch.png", "17:20 PM", "Ceremonia", false),
        TimeLine.new("icons/martini.png", "18:30 PM", "Recepcion", true),
        TimeLine.new("icons/dance.png", "19:20 PM", "Ingreso al salon", false),
        TimeLine.new("icons/serving-dish.png", "20:30 PM", "Plato Principal", true),
        TimeLine.new("icons/champagne-glass.png", "22:30 PM", "Brindis", false),
        TimeLine.new("icons/party-mask.png", "23:30 PM", "Carnaval Carioca", true),
        TimeLine.new("icons/just-married.png", "01:30 AM", "Fin de Fiesta", false),
      ]
    }
    @month_name = "Abril"
    @total_days = 30
    @highlight_day = 5  # Example: Highlight the 15th
    @first_day_offset = 2 # Example: 1st starts on Wednesday
  end
end