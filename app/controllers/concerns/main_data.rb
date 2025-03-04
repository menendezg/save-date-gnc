module MainData
  extend ActiveSupport::Concern
  class TimeLine
    attr_reader :img, :time, :content, :switch

    def initialize(img, time, content, switch)
      @img = img
      @time = time
      @content = content
      @switch = switch
    end
  end

  def data
    {
      dresscode: {
        title: 'Dress code',
        img: 'suit.png',
        content: 'Elegante riguroso'
      },
      gifts: {
        img: 'gift.png',
        title: 'Regalo',
        content: "El mejor regalo para nosotros es contar con tu presencia en este dia
                  tan importante pero si quieres tener un detalle con nosotros puedes ayudanos a contribuir
                  con nuestra luna de miel soñada"
      },
      confirmation: {
        img: 'check.png',
        title: 'Confirmación',
        content: "Para que tengamos la mejor velada posible te pedimos por favor
                  que confirmes tu asistencia en el siguiente link. Muchas gracias"
      },
      timeline: [
        TimeLine.new('icons/arch.png', '17:00 PM', 'Ceremonia', false),
        TimeLine.new('icons/martini.png', '18:30 PM', 'Recepcion', true),
        TimeLine.new('icons/dance.png', '19:20 PM', 'Ingreso al salon', false),
        TimeLine.new('icons/serving-dish.png', '20:30 PM', 'Plato Principal', true),
        TimeLine.new('icons/champagne-glass.png', '22:30 PM', 'Brindis', false),
        TimeLine.new('icons/party-mask.png', '23:30 PM', 'Carnaval Carioca', true),
        TimeLine.new('icons/just-married.png', '01:30 AM', 'Fin de Fiesta', false)
      ]
    }
  end
end
