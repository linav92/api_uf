class UfsController < ApplicationController
    
    def consultar
        valores = Uf.select(:id,:fecha,:valor_uf).find_by_fecha(params[:fecha])
        if valores==nil
            return render json:{msg:"Valor no existe"}
         
        end

        user= request.headers['X-CLIENTE'] 
        Search.create(name:user,date_query:valores.fecha)
        render json: valores
    end

    def consultar_estados
        count = Search.where(name:params[:name]).count()
        render json: {accesos:count}
    end
end
