import Foundation
import CoreData
import CoreLocation
import MapKit
class CSolicitud {
    var idSolicitud: String
    var origenCarrera: CLLocationCoordinate2D
    var dirOrigen: String
    var referenciaorigen :String 
    var fechaHora : String
    var tarifa : Double
    var distancia : Double
    var tiempo : String
    var costo : String
    var idCliente: String
    var user : String
    var nombreApellidos : String
    var idTaxi: String
    var matricula :String
    var codTaxi :String
    var marcaVehiculo :String
    var colorVehiculo :String
    var taximarker: CLLocationCoordinate2D
    var idConductor :String
    var nombreApellido :String
    var movil :String
    var urlFoto :String
    init(){
        self.idSolicitud = ""
        self.dirOrigen = ""
        self.referenciaorigen = ""
        self.fechaHora = ""
        self.tarifa = 0.0
        self.distancia = 0.0
        self.tiempo = "0"
        self.costo = "0"
        self.origenCarrera = CLLocationCoordinate2D()
        self.idCliente = ""
        self.user = ""
        self.nombreApellidos = ""
        self.idTaxi = ""
        self.matricula = ""
        self.codTaxi = ""
        self.marcaVehiculo = ""
        self.colorVehiculo = ""
        taximarker = CLLocationCoordinate2D()
        self.idConductor = ""
        self.nombreApellido = ""
        self.movil = ""
        self.urlFoto = ""
    }
    func DatosOtroCliente(clienteId: String, telefono: String, nombre: String){
        self.idCliente = clienteId
        self.user = telefono
        self.nombreApellidos = nombre
    }
    func DatosCliente(cliente: CCliente){
        self.idCliente = cliente.idCliente
        self.user = cliente.user
        self.nombreApellidos = cliente.nombreApellidos
    }
    func DatosTaxiConductor(idtaxi :String, matricula: String, codigovehiculo :String, marcaVehiculo:String, colorVehiculo: String,lattaxi :String, lngtaxi :String, idconductor: String, nombreapellidosconductor :String, movilconductor: String, foto: String){
        self.idConductor = idconductor
        self.nombreApellido = nombreapellidosconductor
        self.movil = movilconductor
        self.urlFoto = foto
        self.idTaxi = idtaxi
        self.matricula = matricula
        self.codTaxi = codigovehiculo
        self.marcaVehiculo = marcaVehiculo
        self.colorVehiculo = colorVehiculo
        taximarker = CLLocationCoordinate2D(latitude: Double(lattaxi)!, longitude: Double(lngtaxi)!)
    }
    func RegistrarFechaHora(IdSolicitud: String, FechaHora: String){ 
        self.idSolicitud = IdSolicitud
        self.fechaHora = FechaHora
    }
    func DatosSolicitud(dirorigen :String, referenciaorigen :String, dirdestino :String, latorigen :String, lngorigen :String, latdestino :String, lngdestino :String,FechaHora: String){
        self.dirOrigen = dirorigen
        self.referenciaorigen = referenciaorigen
        self.origenCarrera = CLLocationCoordinate2D(latitude: Double(latorigen)!, longitude: Double(lngorigen)!)
        self.fechaHora = FechaHora
    }
    func DistanciaTaxi()->String{
        let ruta = CRuta(origen: self.origenCarrera, taxi: taximarker)
        return ruta.CalcularDistancia()
    }
}
